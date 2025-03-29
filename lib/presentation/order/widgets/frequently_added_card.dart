import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/order/order_summary_screen.dart';

class FrequentlyAddedCard extends StatelessWidget {
  const FrequentlyAddedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 8.h, left: 14.w, bottom: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OrderTitle(title: "Frequently added together"),
              VerticalSpace(16),
              SizedBox(
                height: 130.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 108,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Image.network(
                                  width: 108,
                                  height: 84,
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Lp0VKMPbytkrnX_OwEJZW-Krq40cDNgChQ&s",
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return SizedBox();
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4),
                                  child: SizedBox(
                                    width: 45,
                                    height: 30,
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Text(
                                        "Add",
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalSpace(8),
                          Text(
                            "Intensive cleaningsd",
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "₹100",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return HorizontalSpace(16);
                  },
                  itemCount: 5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
