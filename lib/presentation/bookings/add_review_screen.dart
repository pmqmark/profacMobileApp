import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class AddReviewScreen extends StatelessWidget {
  AddReviewScreen({super.key});
  final ValueNotifier<double> rating = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            VerticalSpace(10),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 5, bottom: 5, top: 5),
                child: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.black,
                  size: 22,
                ),
              ),
            ),
            VerticalSpace(10),
            Text(
              'Give feedback',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            VerticalSpace(40),
            Text(
              'How did we do?',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            VerticalSpace(20),
            ValueListenableBuilder(
              valueListenable: rating,
              builder: (context, value, _) {
                return RatingStars(
                  value: value,
                  starSize: 35,
                  starSpacing: 5,
                  starColor: Color(0xFFE4A70A),
                  valueLabelVisibility: false,
                  maxValue: 5,
                  onValueChanged: (value) {
                    rating.value = value;
                  },
                );
              },
            ),
            VerticalSpace(20),
            Divider(
              color: Colors.black12,
            ),
            VerticalSpace(20),
            Text(
              "Care to share more about it?",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            VerticalSpace(20),
            DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey[400]!,
                ),
              ),
              child: SizedBox(
                height: 300,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  maxLines: null,
                ),
              ),
            ),
            VerticalSpace(20),
            Divider(
              color: Colors.black12,
            ),
            VerticalSpace(20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Text(
                  'Publish Feedback',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            VerticalSpace(10),
            Text("The review will be posted to the Google Play store",
                style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
      ),
    );
  }
}
