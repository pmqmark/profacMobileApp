import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/search_screen/search_services_bloc.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/service/service_screen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchServiceScreen extends StatefulWidget {
  const SearchServiceScreen({super.key});
  @override
  State<SearchServiceScreen> createState() => _SearchServiceScreenState();
}

enum SearchState { idle, searching }

class _SearchServiceScreenState extends State<SearchServiceScreen> {
  final SearchController searchController = SearchController();
  SearchState searchState = SearchState.idle;
  Timer? debounce;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalSpace(20),
              Hero(
                tag: "search",
                child: SearchBox(
                  hintText: "Search for services",
                  controller: searchController,
                  onChanged: (query) {
                    query = query.trim();
                    if (query.isEmpty && searchState == SearchState.searching) {
                      debounce?.cancel();
                      log("state changing to idle state",
                          name: "SearchServiceScreen");
                      searchState = SearchState.idle;
                      setState(() {});
                      return;
                    }
                    if (query.isNotEmpty) {
                      if (debounce?.isActive ?? false) debounce?.cancel();
                      debounce = Timer(const Duration(milliseconds: 500), () {
                        if (query.isNotEmpty &&
                            searchState == SearchState.idle) {
                          log("state changing to searching state",
                              name: "SearchServiceScreen");
                          searchState = SearchState.searching;
                          setState(() {});
                        }
                        BlocProvider.of<SearchServicesBloc>(context)
                            .add(SearchServicesEvent.search(query));
                      });
                      return;
                    }
                    log("yee jkyaa he");
                  },
                ),
              ),
              if (searchState == SearchState.idle)
                ..._buildIdleScreen(context)
              else ...[
                VerticalSpace(20),
                Expanded(child: _buildSearchResults(context, "")),
              ],
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildIdleScreen(context) {
    return [
      VerticalSpace(30),
      Text("Recent Searches", style: Theme.of(context).textTheme.titleLarge),
      VerticalSpace(12),
      ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {
                  searchController.text = "Item $index";
                  searchState = SearchState.searching;
                  BlocProvider.of<SearchServicesBloc>(context)
                      .add(SearchServicesEvent.search("Item $index"));
                  setState(() {});
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      "Item $index",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(fontSize: 15),
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return VerticalSpace(2);
          },
          itemCount: 3),
      VerticalSpace(30),
      Text("Popular Searches", style: Theme.of(context).textTheme.titleLarge),
      VerticalSpace(12),
      Wrap(
        spacing: 8,
        children: List.generate(3, (index) {
          return GestureDetector(
            onTap: () {
              searchController.text = "Item $index";
              searchState = SearchState.searching;
              BlocProvider.of<SearchServicesBloc>(context)
                  .add(SearchServicesEvent.search("Item $index"));
              setState(() {});
            },
            child: Chip(
              avatar: Icon(Icons.trending_up_sharp, color: Colors.black),
              label: Text("Item 1",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontSize: 15)),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
          );
        }),
      )
    ];
  }

  Widget _buildSearchResults(context, String categoryId) {
    return BlocBuilder<SearchServicesBloc, SearchServicesState>(
      builder: (context, state) {
        return state.maybeMap(
          loading: (value) {
            return _buildLoading(context, categoryId);
          },
          orElse: () {
            return SizedBox();
          },
          loaded: (state) {
            if (state.subServices.isEmpty) {
              return Text("No results found");
            }
            return _buildSuccess(state.subServices, categoryId);
          },
        );
      },
    );
  }

  Widget _buildLoading(BuildContext context, String categoryId) {
    final dummyData = SubServiceModel(
      id: "id",
      name: "name",
      media: [],
      isPackage: true,
      options: [],
      about: [],
      steps: "steps",
      brands: [],
      tips: [],
      included: [],
      excluded: [],
      notes: [],
      faqs: [],
      v: 0,
      avgRating: 0,
      reviewCount: 0,
      isArchived: false,
    );
    return Skeletonizer(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return _ServieSearchListItem(
            subServiceModel: dummyData,
            categoryId: categoryId,
          );
        },
        separatorBuilder: (context, index) {
          return VerticalSpace(8);
        },
        itemCount: 3,
      ),
    );
  }

  ListView _buildSuccess(List<SubServiceModel> subServices, String categoryId) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return _ServieSearchListItem(
          subServiceModel: subServices[index],
          categoryId: categoryId,
        );
      },
      separatorBuilder: (context, index) {
        return VerticalSpace(8);
      },
      itemCount: subServices.length,
    );
  }
}

class _ServieSearchListItem extends StatelessWidget {
  const _ServieSearchListItem({
    required this.subServiceModel,
    required this.categoryId,
  });
  final SubServiceModel subServiceModel;
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ServiceScreen(
            categoryId: categoryId,
            subServiceId: subServiceModel.id,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                "https://i.guim.co.uk/img/media/b6bb78245a61c61fd659e4a06b34f32eab94241a/0_175_4129_2479/master/4129.jpg?width=1200&height=630&quality=85&auto=format&fit=crop&overlay-align=bottom%2Cleft&overlay-width=100p&overlay-base64=L2ltZy9zdGF0aWMvb3ZlcmxheXMvdGctYWdlLTIwMjMucG5n&s=ed7e18c5b26bf481d0780b385467e289",
                width: 60,
                height: 72,
                fit: BoxFit.cover,
              ),
            ),
            HorizontalSpace(25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subServiceModel.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                VerticalSpace(4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 18),
                    HorizontalSpace(5),
                    Text(
                      "4.8 (4M bookings)",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                VerticalSpace(4),
                Row(
                  children: [
                    if (subServiceModel.options.length > 0)
                      Text(
                        subServiceModel.options[0].price.toString(),
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    HorizontalSpace(5),
                    Icon(Icons.circle, size: 4, color: Colors.grey[400]),
                    HorizontalSpace(5),
                    Text(
                      "3hrs 20min",
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
