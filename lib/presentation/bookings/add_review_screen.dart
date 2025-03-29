import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:profac/application/booking/add_review/add_review_bloc.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/services/model/review_model.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class AddReviewScreen extends StatelessWidget {
  AddReviewScreen({super.key, required this.bookingModel});
  final ValueNotifier<double> rating = ValueNotifier(1);
  final BookingModel bookingModel;
  final ValueNotifier<BookingOption?> bookingOption = ValueNotifier(null);
  final TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AddReviewBloc, AddReviewState>(
        listener: (context, state) {
          state.mapOrNull(
            success: (value) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Review added successfully"),
              ));
              rating.value = 1;
              bookingOption.value = null;
              commentController.clear();
            },
          );
        },
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView(
                  children: [
                    VerticalSpace(10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 5, bottom: 5, top: 5),
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.black,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                    VerticalSpace(10),
                    Text(
                      'Give feedback',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    VerticalSpace(30),
                    _buildOtptionDropdown(),
                    VerticalSpace(20),
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
                          controller: commentController,
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
                        onPressed: () {
                          if (bookingOption.value == null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Select a booked option")));
                            return;
                          }
                          final ReviewDataModel reviewDataModel =
                              ReviewDataModel(
                            user: getIt<TokensNKeys>().userId,
                            subservice: bookingOption.value!.subServiceId!,
                            option: bookingOption.value!.optionId,
                            booking: bookingModel.bookingId,
                            rating: rating.value,
                            comment: commentController.text,
                          );
                          BlocProvider.of<AddReviewBloc>(context).add(
                            AddReviewEvent.addReview(reviewDataModel),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        child: Text(
                          'Submit',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    VerticalSpace(10),
                  ],
                ),
              ),
              state.maybeMap(
                loading: (state) {
                  return SizedBox.expand(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                      ),
                      child: ProfacLoadingIndicator(),
                    ),
                  );
                },
                orElse: () {
                  return const SizedBox();
                },
              ),
            ],
          );
        },
      ),
    );
  }

  ValueListenableBuilder<BookingOption?> _buildOtptionDropdown() {
    return ValueListenableBuilder<BookingOption?>(
      valueListenable: bookingOption,
      builder: (context, selectedOption, _) {
        return DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DropdownButton<BookingOption>(
              dropdownColor: Colors.white,
              style: Theme.of(context).textTheme.bodyMedium,
              value: selectedOption,
              hint: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Select a booking option',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              items: bookingModel.options.map((option) {
                return DropdownMenuItem<BookingOption>(
                  value: option,
                  child: Text(option.name),
                );
              }).toList(),
              onChanged: (newValue) {
                bookingOption.value = newValue;
              },
              isExpanded: true,
              borderRadius: BorderRadius.circular(10),
              underline: SizedBox(),
            ),
          ),
        );
      },
    );
  }
}
