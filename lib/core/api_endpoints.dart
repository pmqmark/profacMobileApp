//Authentication

class ApiEndpoints {
  //Authentication
  static const login = '/api/auth/login';
  static const googleSignIn = '/api/auth/google';

  //verification
  static const sendOtp = '/api/otp/send';
  static const verifyOtp = '/api/otp/verify';

  //Authorization
  static const updateAccessToken = '/api/auth/refresh-token';

  //Profile
  static const profile = '/api/users';
  static const deleteProfile = '/api/users/';
  static const downloadData = '/api/users/download-data';

  //categories
  static const getAllCategoryGroups = '/api/categories/groups';
  static const getCategory = '/api/categories';

  //services
  static const getServices = '/api/services';
  static const getSubServices = '/api/services/subservices';

  //search
  static const search = '/api/searches/list';
  static const popularSearches = '/api/searches/popular';
  static const recentSearches = '/api/searches/recents';

  //reviews
  static const getReviews = '/api/services/reviews/many/';

  // address
  static const address = "/api/users/address";
  static const checkServiceLocation = "/api/locations/nearest";
  static const checkAvailability = "/api/categories/availability-in-address";

  //fcm
  static const fcmToken = '/api/auth/update-fcm-token';

  //cart
  static const cart = '/api/carts';

  //checkout
  // coupons
  static const coupons = '/api/discounts/available-coupons';
  static const fetchFareSplit = '/api/carts/fetch-fare-split';
  //slots
  static const slots = '/api/bookings/slots/all';
  //book a service
  static const bookService = '/api/bookings';
  static const getAllBooking = '/api/bookings/users';
  static const getBookingDetails = '/api/bookings';
  static const cancelBooking = '/api/bookings/status';
  static const addReview = '/api/services/reviews';

  //help and support
  static const helpAndSupport = '/api/helps';

  //banners
  static const banners = '/api/banners';
}
