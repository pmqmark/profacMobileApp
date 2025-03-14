import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/sub_service_reviews/sub_service_reviews_bloc.dart';
import 'package:profac/domain/services/model/review_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/service/widgets/review_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ShowReviewsSheet extends StatelessWidget {
  const ShowReviewsSheet({
    super.key, required this.subServiceId,
  });
  final String subServiceId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubServiceReviewsBloc, SubServiceReviewsState>(
      builder: (context, state) {
        if (state.isLoading) { 
          return _buildLoading(context);
        }
        return state.failureOrReviews.fold(
          () => VerticalSpace(20),
          (a) => a.fold(
            (l) {
              return Center(
                child: TextButton.icon(
                    onPressed: () {
                      BlocProvider.of<SubServiceReviewsBloc>(context)
                          .add( SubServiceReviewsEvent.getReviews(subServiceId));
                    },
                    label: Text('Retry'),
                    icon: Icon(Icons.refresh)),
              );
            },
            (r) {
              return _buildSuccess(state.reviews);
            },
          ),
        );
      },
    );
  }

  Widget _buildLoading(BuildContext context) {
    return Skeletonizer(
        child: _buildSuccess(List.generate(
            3,
            (index) => ReviewModel(
                id: "",
                comment: "",
                rating: 0,
                userName: "",
                optionName: ""))));
  }

  ListView _buildSuccess(List<ReviewModel> reviews) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        return ReviewCard(reviewModel: reviews[index]);
      },
    );
  }
}
