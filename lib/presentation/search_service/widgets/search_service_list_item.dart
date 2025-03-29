import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profac/domain/search/model/search_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/service_screen.dart';

class SearchServiceListItem extends StatelessWidget {
  const SearchServiceListItem({
    required this.searchSubServiceModel,
  });
  final SearchSubServiceModel searchSubServiceModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ServiceScreen(
            subServiceId: searchSubServiceModel.id,
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
                errorBuilder: (context, error, stackTrace) {
                  return SizedBox();
                },
              ),
            ),
            HorizontalSpace(25),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searchSubServiceModel.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                VerticalSpace(4),
                if (searchSubServiceModel.reviewCount > 0)
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      HorizontalSpace(5),
                      Text(
                        "${searchSubServiceModel.averageRating > 0 ? searchSubServiceModel.averageRating : ''} (${searchSubServiceModel.reviewCount} bookings)",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
