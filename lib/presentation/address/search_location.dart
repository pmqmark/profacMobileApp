import 'dart:developer';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:profac/presentation/address/new_address_form.dart';
import 'package:profac/presentation/address/select_loction.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/search_box.dart';

class SearchLocationBottomSheet extends StatelessWidget {
  const SearchLocationBottomSheet({super.key});

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
          child:
              SearchBox(hintText: "Search for your locality/society/apartment"),
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
            Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SelectLoction();
            }));
          },
        ),
        Divider(),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 25),
                  leading: Icon(Icons.place_outlined, size: 24),
                  title: Text("Kolkata, West Bengal",
                      style: Theme.of(context).textTheme.titleMedium),
                  subtitle: Text(
                    "Nearby: Salt Lake City",
                    style: Theme.of(context).textTheme.labelSmall,
                    maxLines: 2,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SelectLoction();
                    }));
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 3),
        )
      ],
    );
  }
}

// class PlaceSearchPage extends StatefulWidget {
//   @override
//   _PlaceSearchPageState createState() => _PlaceSearchPageState();
// }

// class _PlaceSearchPageState extends State<PlaceSearchPage> {
//   final TextEditingController _searchController = TextEditingController();
//   List<Map<String, dynamic>> _searchResults = [];
//   Timer? _debounce;
//   @override
//   void dispose() {
//     _debounce?.cancel();
//     super.dispose();
//   }

//   void _performSearch(String query) async {
//     final apiKey = '';
//     final url =
//         'https://maps.googleapis.com/maps/api/place/textsearch/json?query=$query&key=$apiKey';

//     final response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       log('Search results: ${data['results']}');
//       setState(() {
//         _searchResults = (data['results'] as List<dynamic>).map((place) {
//           return {
//             'name': place['name'] as String,
//             'address': place['formatted_address'] as String,
//             'latitude': place['geometry']['location']['lat'],
//             'longitude': place['geometry']['location']['lng'],
//           };
//         }).toList();
//       });
//     } else {
//       log('Failed to load search results: ${response}');
//       setState(() {
//         _searchResults = [];
//       });
//     }
//   }

//   void _onPlaceTap(Map<String, dynamic> place) {
//     final name = place['name'];
//     final address = place['address'];
//     final latitude = place['latitude'];
//     final longitude = place['longitude'];
//     print(
//         'Place: $name, Address: $address, Latitude: $latitude, Longitude: $longitude');

//     // Show a dialog with place details
//     showDialog(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text('Place Details'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Name: $name'),
//               Text('Address: $address'),
//               Text('Latitude: $latitude'),
//               Text('Longitude: $longitude'),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search Places'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 hintText: 'Search for places...',
//                 border: OutlineInputBorder(),
//                 suffixIcon: IconButton(
//                   icon: Icon(Icons.search),
//                   onPressed: () {
//                     _performSearch(_searchController.text);
//                   },
//                 ),
//               ),
//               onChanged: (query) {
//                 if (_debounce?.isActive ?? false) _debounce?.cancel();
//                 _debounce = Timer(const Duration(milliseconds: 500), () {
//                   _performSearch(query);
//                 });
//               },
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _searchResults.length,
//               itemBuilder: (context, index) {
//                 final place = _searchResults[index];
//                 return ListTile(
//                   title: Text(place['name']),
//                   subtitle: Text(place['address']),
//                   onTap: () {
//                     _onPlaceTap(place);
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
