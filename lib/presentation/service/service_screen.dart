import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/detailed_service/detailed_service_bloc.dart';
import 'package:profac/application/sub_service_reviews/sub_service_reviews_bloc.dart';
import 'package:profac/domain/services/model/option_model.dart';
import 'package:profac/domain/services/model/review_model.dart';
import 'package:profac/domain/services/model/subservice_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/widgets/faqs.dart';
import 'package:profac/presentation/service/widgets/options_list_view.dart';
import 'package:profac/presentation/service/widgets/processes.dart';
import 'package:profac/presentation/service/widgets/review_card.dart';
import 'package:profac/presentation/service/widgets/service_title.dart';
import 'package:profac/presentation/service/widgets/show_reviews_sheet.dart';
import 'package:rating_summary/rating_summary.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ServiceScreen extends StatefulWidget {
  ServiceScreen(
      {super.key, required this.subServiceId});
  final String subServiceId;
  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  void initState() {
    BlocProvider.of<DetailedServiceBloc>(context)
        .add(DetailedServiceEvent.getSubServiceById(widget.subServiceId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SubServiceReviewsBloc>(context)
          .add(SubServiceReviewsEvent.getReviews(widget.subServiceId));
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<DetailedServiceBloc, DetailedServiceState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return _buildLoading(context);
              },
              loaded: (value) {
                return _buildSuccess(context, value.detailedService);
              },
            );
          },
        ),
      ),
    );
  }

  Skeletonizer _buildLoading(BuildContext context) {
    //dummy subServiceModel
    final dummySubServiceModel = SubServiceModel(
        id: '1',
        name: 'Cleaning',
        avgRating: 4.5,
        ratingCount: null,
        isPackage: false,
        steps: "",
        brands: [],
        tips: [],
        included: [],
        excluded: [],
        notes: [],
        media: [],
        isArchived: false,
        v: 0,
        options: [
          OptionModel(
              id: '',
              name: '',
              subServiceId: '',
              categoryId: '',
              price: 1000,
              duration: 60,
              isArchived: false,
              v: 0)
        ],
        about: [],
        faqs: []);
    return Skeletonizer(
        child: _buildSuccess(
            context,
            DetailedSubServiceModel(
                reviews: [], subServiceModel: dummySubServiceModel)));
  }

  ListView _buildSuccess(
      BuildContext context, DetailedSubServiceModel detailedSubServiceModel) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      children: [
        ...loadSubServiceModel(detailedSubServiceModel.subServiceModel),
        VerticalSpace(20),
        ...reviewsSection(context, detailedSubServiceModel.reviews,
            detailedSubServiceModel.subServiceModel),
      ],
    );
  }

  List<Widget> loadSubServiceModel(SubServiceModel subServiceModel) {
    return [
      ServiceTitle(
        title: subServiceModel.name,
        price: subServiceModel.options[0].price,
        rating: subServiceModel.avgRating,
      ),
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
      if (subServiceModel.options.length > 1) ...[
        VerticalSpace(20),
        ...optionsSection(context, subServiceModel.options),
      ],
      VerticalSpace(20),
      ...processesSection(context, subServiceModel.about),
      ...faqSection(context, subServiceModel.faqs),
    ];
  }

  List<Widget> optionsSection(
    context,
    List<OptionModel> optionModels,
  ) {
    return [
      Text(
        'Options',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      VerticalSpace(12),
      SizedBox(
        height: 130,
        child: OptionsListView(
            subServiceId: widget.subServiceId,
            options: optionModels),
      )
    ];
  }

  List<Widget> processesSection(context, List<AboutProcess> aboutProcesses) {
    return [
      Text(
        'About the process',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      VerticalSpace(12),
      Processes(
        aboutProcesses: aboutProcesses,
      ),
    ];
  }

  List<Widget> faqSection(context, List<FAQModel> faqs) {
    return [
      Text(
        'Frequently asked questions',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      VerticalSpace(6),
      Faqs(
        itemCount: 5,
        faqmodels: faqs,
      ),
    ];
  }

  List<Widget> reviewsSection(
      context, List<ReviewModel> reviews, SubServiceModel subServiceModel) {
    log(subServiceModel.ratingCount.toString());
    return [
      if (subServiceModel.ratingCount != null) ...[
        Text(
          'Reviews',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        VerticalSpace(15),
        RatingSummary(
          counter: 52,
          average: subServiceModel.avgRating,
          space: 4,
          labelCounterFiveStars: labelCouterStarts(5, context),
          labelCounterFourStars: labelCouterStarts(4, context),
          labelCounterThreeStars: labelCouterStarts(3, context),
          labelCounterTwoStars: labelCouterStarts(2, context),
          labelCounterOneStars: labelCouterStarts(1, context),
          counterFiveStars: subServiceModel.ratingCount!["5"]!,
          counterFourStars: subServiceModel.ratingCount!["4"]!,
          counterThreeStars: subServiceModel.ratingCount!["3"]!,
          counterTwoStars: subServiceModel.ratingCount!["2"]!,
          counterOneStars: subServiceModel.ratingCount!["1"]!,
          color: Color(0xFF57BC5B),
          thickness: 5,
        ),
      ],
      VerticalSpace(20),
      Text(
        'All reviews',
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Colors.black87,
            ),
      ),
      VerticalSpace(10),
      ...List.generate(
        reviews.length,
        (index) => ReviewCard(
          reviewModel: reviews[index],
        ),
      ),
      TextButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              showDragHandle: true,
              scrollControlDisabledMaxHeightRatio: 0.8,
              builder: (context) {
                return ShowReviewsSheet(
                  subServiceId: widget.subServiceId,
                );
              });
        },
        child: Text("Show More",
            style: TextStyle(color: Theme.of(context).primaryColor)),
      )
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
