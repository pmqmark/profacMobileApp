//Authentication

class ApiEndpoints {
  //Authentication
  static const otp = '/api/auth/send-otp';
  static const verifyOtp = '/api/auth/verify-otp';

  //Authorization
  static const updateAccessToken = '/api/auth/refresh-token';

  //Profile
  static const profile = '/api/users';

  //categories
  static const getAllCategoryGroups = '/api/categories/groups';
  static const getAllCategories = '/api/categories';
}
