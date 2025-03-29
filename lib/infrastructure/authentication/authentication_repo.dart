import 'dart:developer';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/application/banner/banner_bloc.dart';
import 'package:profac/application/booking/bookings/bookings_bloc.dart';
import 'package:profac/application/booking/detailed_booking/detailed_booking_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/application/categories_group/catrogies_group_bloc.dart';
import 'package:profac/application/category_detailed/category_detailed_bloc.dart';
import 'package:profac/application/checkout/booking_amount/booking_amount_bloc.dart';
import 'package:profac/application/checkout/booking_available/booking_available_bloc.dart';
import 'package:profac/application/checkout/booking_slots/booking_slots_bloc.dart';
import 'package:profac/application/checkout/checkout_order/checkout_order_bloc.dart';
import 'package:profac/application/checkout/coupons/coupons_bloc.dart';
import 'package:profac/application/detailed_service/detailed_service_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/application/search_screen/search_services_bloc.dart';
import 'package:profac/application/service_available/service_available_bloc.dart';
import 'package:profac/application/settings/delete_profile/delete_profile_bloc.dart';
import 'package:profac/application/settings/download_data/download_data_bloc.dart';
import 'package:profac/application/settings/help_and_support/help_and_support_bloc.dart';
import 'package:profac/application/splash_screen/splash_screen_bloc.dart';
import 'package:profac/application/sub_service_reviews/sub_service_reviews_bloc.dart';
import 'package:profac/application/verification/verification_bloc.dart';
import 'package:profac/core/api_endpoints.dart';
import 'package:profac/domain/authentication/i_authentication_repo.dart';
import 'package:profac/domain/authentication/model/auth_model.dart';
import 'package:profac/domain/di/injectable.dart';
import 'package:profac/domain/failure/api_failure_handler.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/tokens_n_keys/tokens_n_keys.dart';
import 'package:profac/domain/request/request.dart';
import 'package:profac/main.dart';

@LazySingleton(as: IAuthenticationRepo)
class AuthenticationRepo extends IAuthenticationRepo {
  @override
  Future<Either<MainFailure, void>> sendOTP(String email) async {
    try {
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.sendOtp, data: {'email': email});
      if (response.statusCode == 200) {
        return right(null);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError(e);
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, AuthModel>> verifyOtp(
      {required String otp, required String email}) async {
    try {
      log('otp: $otp, mobile: $email');
      final response = await getIt<Request>()
          .dio
          .post(ApiEndpoints.login, data: {'otp': otp, 'email': email});

      if (response.statusCode == 200) {
        final authModel = AuthModel.fromJson(response.data);
        authModel.authenticationType = AuthenticationType.signIn;
        return right(authModel);
      } else if (response.statusCode == 201) {
        final authModel = AuthModel.fromJson(response.data);
        authModel.authenticationType = AuthenticationType.signUp;
        return right(authModel);
      } else {
        return left(const MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());
      if (e is DioException) {
        return ApiFailureHandler().handleDioError(e);
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  @override
  Future<Either<MainFailure, void>> logout() async {
    final respose = await getIt<TokensNKeys>().clearAll();
    if (respose) {
      _resetAllBlocs(navigatorKey.currentContext!);
      return right(null);
    } else {
      return left(const MainFailure.otherFailure());
    }
  }

  @override
  Future<Either<MainFailure, AuthModel>> googleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        log('no Google account selected', name: 'google sign in');
        return left(
            const MainFailure.otherFailure(message: 'Select a Google account'));
      } else {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        String? token = await FirebaseMessaging.instance.getToken();
        log('token: $token \n idToken:${googleAuth.idToken}',
            name: 'google sign in');
        final response = await getIt<Request>().dio.post(
          ApiEndpoints.googleSignIn,
          data: {
            'idToken': googleAuth.idToken,
            'fcmToken': token,
          },
        );
        log(response.data.toString(), name: 'Google sign in');
        if (response.statusCode == 200) {
          final authModel = AuthModel.fromJson(response.data);
          authModel.authenticationType = AuthenticationType.signIn;
          return right(authModel);
        } else if (response.statusCode == 201) {
          log('new user', name: 'google sign in');
          final authModel = AuthModel.fromJson(response.data);
          authModel.authenticationType = AuthenticationType.signUp;
          return right(authModel);
        } else {
          return left(const MainFailure.clientFailure());
        }
      }
    } catch (e) {
      log(e.toString(), name: 'google sign in');
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult.contains(ConnectivityResult.none)) {
        log("no Internet conneciton");
        return left(const MainFailure.noInternetConnection());
      }
      if (e is DioException) {
        return ApiFailureHandler().handleDioError<AuthModel>(e);
      }
      if (e is FirebaseAuthException) {
        return left(const MainFailure.authFailure('Google sign in failed'));
      } else {
        return left(const MainFailure.otherFailure());
      }
    }
  }

  void _resetAllBlocs(BuildContext context) {
    context.read<SearchLocationBloc>().add(SearchLocationEvent.reset());
    context.read<AuthenticationBloc>().add(AuthenticationEvent.reset());
    context.read<ProfileBloc>().add(ProfileEvent.reset());
    context.read<CategoriesGroupBloc>().add(CategoriesGroupEvent.reset());
    context.read<AddressBloc>().add(AddressEvent.reset());
    context.read<CategoryDetailedBloc>().add(CategoryDetailedEvent.reset());
    context.read<SearchServicesBloc>().add(SearchServicesEvent.reset());
    context.read<CartItemsBloc>().add(CartItemsEvent.reset());
    context.read<DetailedServiceBloc>().add(DetailedServiceEvent.reset());
    context.read<SubServiceReviewsBloc>().add(SubServiceReviewsEvent.reset());
    context.read<ServiceAvailableBloc>().add(ServiceAvailableEvent.reset());
    context.read<CouponsBloc>().add(CouponsEvent.reset());
    context.read<BookingAmountBloc>().add(BookingAmountEvent.reset());
    context.read<BookingSlotsBloc>().add(BookingSlotsEvent.reset());
    context.read<BookingAvailableBloc>().add(BookingAvailableEvent.reset());
    context.read<CheckoutOrderBloc>().add(CheckoutOrderEvent.reset());
    context.read<VerificationBloc>().add(VerificationEvent.reset());
    context.read<BookingsBloc>().add(BookingsEvent.reset());
    context.read<DeleteProfileBloc>().add(DeleteProfileEvent.reset());
    context.read<DownloadDataBloc>().add(DownloadDataEvent.reset());
    context.read<HelpAndSupportBloc>().add(HelpAndSupportEvent.reset());
    context.read<DetailedBookingBloc>().add(DetailedBookingEvent.reset());

    // Also reset any other state management you might have (like providers)
  }
}
