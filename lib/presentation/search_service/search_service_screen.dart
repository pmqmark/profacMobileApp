import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/search_screen/search_services_bloc.dart';
import 'package:profac/domain/search/model/search_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:profac/presentation/search_service/widgets/search_category_list_item.dart';
import 'package:profac/presentation/search_service/widgets/search_service_list_item.dart';
import 'package:profac/presentation/service/service_screen.dart';
import 'package:skeletonizer/skeletonizer.dart';

enum SearchState { idle, searching }

class SearchServiceScreen extends StatefulWidget {
  SearchServiceScreen({super.key});

  @override
  State<SearchServiceScreen> createState() => _SearchServiceScreenState();
}

class _SearchServiceScreenState extends State<SearchServiceScreen> {
  final SearchController searchController = SearchController();

  SearchState searchState = SearchState.idle;

  Timer? debounce;
  @override
  void initState() {
    BlocProvider.of<SearchServicesBloc>(context)
        .add(SearchServicesEvent.popularAndRecentSearches());
    super.initState();
  }

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
                      BlocProvider.of<SearchServicesBloc>(context)
                          .add(SearchServicesEvent.popularAndRecentSearches());
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
      BlocBuilder<SearchServicesBloc, SearchServicesState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () {
              return SizedBox();
            },
            recentAndPopularLoaded: (value) {
              return Column(
                children: [
                  if (value.recentSearches.isNotEmpty) ...[
                    VerticalSpace(30),
                    Text("Recent Searches",
                        style: Theme.of(context).textTheme.titleLarge),
                    VerticalSpace(12),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {},
                            child: value.recentSearches[index].fold(
                              (l) => SearchServiceListItem(
                                  searchSubServiceModel: l),
                              (r) => SearchCategoryListItem(
                                  searchCategoryModel: r),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return VerticalSpace(2);
                      },
                      itemCount: value.recentSearches.length,
                    ),
                  ],
                  if (value.recentSearches.isNotEmpty) ...[
                    VerticalSpace(30),
                    Text("Popular Searches",
                        style: Theme.of(context).textTheme.titleLarge),
                    VerticalSpace(12),
                    Wrap(
                      spacing: 8,
                      children: List.generate(
                        3,
                        (index) {
                          return GestureDetector(
                            onTap: () {
                              searchController.text = "Item $index";
                              searchState = SearchState.searching;
                              BlocProvider.of<SearchServicesBloc>(context).add(
                                  SearchServicesEvent.search("Item $index"));
                              setState(() {});
                            },
                            child: Chip(
                              avatar: Icon(Icons.trending_up_sharp,
                                  color: Colors.black),
                              label: Text("Item 1",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge
                                      ?.copyWith(fontSize: 15)),
                              backgroundColor: Colors.white,
                              elevation: 0,
                            ),
                          );
                        },
                      ),
                    ),
                  ]
                ],
              );
            },
          );
        },
      ),
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
            if (state.searchResults.isEmpty) {
              return Text("No results found");
            }
            return _buildSuccess(state.searchResults, categoryId);
          },
        );
      },
    );
  }

  Widget _buildLoading(BuildContext context, String categoryId) {
    final dummyData = SearchSubServiceModel(
        id: "",
        name: "name",
        averageRating: 4,
        reviewCount: 2,
        resourceType: "");
    return Skeletonizer(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SearchServiceListItem(
            searchSubServiceModel: dummyData,
          );
        },
        separatorBuilder: (context, index) {
          return VerticalSpace(8);
        },
        itemCount: 3,
      ),
    );
  }

  ListView _buildSuccess(
      List<dartz.Either<SearchSubServiceModel, SearchCategoryModel>>
          searchResults,
      String categoryId) {
    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return searchResults[index].fold(
          (subService) => SearchServiceListItem(
            searchSubServiceModel: subService,
          ),
          (category) => SearchCategoryListItem(searchCategoryModel: category),
        );
      },
      separatorBuilder: (context, index) {
        return VerticalSpace(8);
      },
      itemCount: searchResults.length,
    );
  }
}
