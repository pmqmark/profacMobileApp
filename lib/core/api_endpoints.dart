//Authentication

class ApiEndpoints {
  //Authentication
  static const otp = '/api/auth/send-otp';
  static const verifyOtp = '/api/auth/verify-otp';
  static const googleSignIn = '/api/auth/google';

  //Authorization
  static const updateAccessToken = '/api/auth/refresh-token';

  //Profile
  static const profile = '/api/users';

  //categories
  static const getAllCategoryGroups = '/api/categories/groups';
  static const getCategory = '/api/categories';

  //services
  static const getServices = '/api/services';
  static const getSubServices = '/api/services/subservices';

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
  static const fetchTotalAmount = '/api/carts/total-amount';
  //slots
  static const slots = '/api/bookings/slots/all';
  //book a service
  static const bookService = '/api/bookings';

  //banners
  static const banners = '/api/banners';
}
