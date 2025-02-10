
import 'package:flutter/material.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/widgets/faqs.dart';
import 'package:profac/presentation/service/widgets/processes.dart';
import 'package:profac/presentation/service/widgets/review_card.dart';
import 'package:profac/presentation/service/widgets/service_title.dart';
import 'package:rating_summary/rating_summary.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          children: [
            ServiceTitle(),
            VerticalSpace(12),
            SizedBox(
              height: 152,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i0.wp.com/www.additudemag.com/wp-content/uploads/2023/07/Cleaning-House-When-You-Dont-Want-to_1920x1080.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            VerticalSpace(34),
            ...processesSection(context),
            ...faqSection(context),
            VerticalSpace(20),
            ...reviewsSection(context),
          ],
        ),
      ),
    );
  }

  List<Widget> processesSection(context) {
    return [
      Text(
        'About the process',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      VerticalSpace(12),
      Processes(),
    ];
  }

  List<Widget> faqSection(context) {
    return [
      Text(
        'Frequently asked questions',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      VerticalSpace(6),
      Faqs(itemCount: 5),
    ];
  }

  List<Widget> reviewsSection(context) {
    return [
      Text(
        'Reviews',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      VerticalSpace(15),
      RatingSummary(
        counter: 52,
        average: 4.8,
        space: 4,
        labelCounterFiveStars: labelCouterStarts(5, context),
        labelCounterFourStars: labelCouterStarts(4, context),
        labelCounterThreeStars: labelCouterStarts(3, context),
        labelCounterTwoStars: labelCouterStarts(2, context),
        labelCounterOneStars: labelCouterStarts(1, context),
        counterFiveStars: 26,
        counterFourStars: 12,
        counterThreeStars: 8,
        counterTwoStars: 4,
        counterOneStars: 2,
        color: Color(0xFF57BC5B),
        thickness: 5,
      ),
      VerticalSpace(20),
      Text(
        'All reviews',
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Colors.black87,
            ),
      ),
      VerticalSpace(10),
      ...List.generate(
        3,
        (index) => ReviewCard(),
      ),
    ];
  }

  Widget labelCouterStarts(int counter, BuildContext context) {
    return Row(
      children: [
        Text('$counter', style: Theme.of(context).textTheme.titleSmall),
        HorizontalSpace(4),
        Icon(Icons.star, color: Color(0xFFF2B90D), size: 16),
      ],
    );
  }
}
