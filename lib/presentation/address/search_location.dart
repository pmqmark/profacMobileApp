import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/presentation/address/select_loction.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchLocationBottomSheet extends StatefulWidget {
  const SearchLocationBottomSheet({super.key});

  @override
  State<SearchLocationBottomSheet> createState() =>
      _SearchLocationBottomSheetState();
}

class _SearchLocationBottomSheetState extends State<SearchLocationBottomSheet> {
  final TextEditingController searchController = TextEditingController();
  Timer? debounce;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSpace(30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text("Set Address",
              style: Theme.of(context).textTheme.titleLarge),
        ),
        VerticalSpace(10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SearchBox(
            hintText: "Search for your locality/society/apartment",
            controller: searchController,
            onChanged: (query) {
              if (debounce?.isActive ?? false) debounce?.cancel();
              debounce = Timer(const Duration(milliseconds: 500), () {
                BlocProvider.of<SearchLocationBloc>(context)
                    .add(SearchLocationEvent.searchLocation(query));
              });
            },
          ),
        ),
        VerticalSpace(10),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 35),
          leading: Icon(
            Icons.my_location_outlined,
            color: Theme.of(context).primaryColor,
            size: 22,
          ),
          title: Text("Use current location",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Theme.of(context).primaryColor)),
          onTap: () {
            BlocProvider.of<SearchLocationBloc>(context).add(
              SearchLocationEvent.started(),
            );
            FocusScope.of(context).unfocus();
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SelectLoction();
            }));
          },
        ),
        Divider(),
        Expanded(
          child: BlocBuilder<SearchLocationBloc, SearchLocationState>(
            builder: (context, state) {
              return state.when(
                initial: () => SizedBox(),
                loading: () {
                  return Skeletonizer(
                    child: _buildSuccess(
                      List.generate(
                        5,
                        (index) => GMapAddress(
                            name: "Loadinggggggggg",
                            formattedAddress:
                                "Loadinggggggg.......................",
                            lat: 0.0,
                            lng: 0.0),
                      ),
                    ),
                  );
                },
                loaded: (data) {
                  if (data.results.isEmpty &&
                      searchController.text.isNotEmpty) {
                    return ListView(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 25),
                          title: Text("No results found",
                              style: Theme.of(context).textTheme.titleMedium),
                        ),
                      ],
                    );
                  }
                  return _buildSuccess(data.results);
                },
                error: (message) => _buildError(context),
                loadedLatLng: (address) {
                  return SizedBox();
                },
              );
            },
          ),
        )
      ],
    );
  }

  Center _buildError(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Something went wrong",
              style: Theme.of(context).textTheme.labelMedium),
          TextButton(
            onPressed: () {
              BlocProvider.of<SearchLocationBloc>(context).add(
                SearchLocationEvent.searchLocation(searchController.text),
              );
            },
            child: Text(
              "Try Again",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          )
        ],
      ),
    );
  }

  ListView _buildSuccess(List<GMapAddress> data) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 25),
            leading: Icon(Icons.place_outlined, size: 24),
            title: Text(data[index].name,
                style: Theme.of(context).textTheme.titleMedium),
            subtitle: Text(
              data[index].formattedAddress,
              style: Theme.of(context).textTheme.labelSmall,
              maxLines: 2,
            ),
            onTap: () {
              FocusScope.of(context).unfocus();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SelectLoction(address: data[index]);
              }));
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: data.length);
  }
}
