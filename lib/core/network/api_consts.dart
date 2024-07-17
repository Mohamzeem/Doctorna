class ApiConsts {
  static const String apiBaseUrl = 'https://vcare.integration25.com/api/';
  static const String apiLogIn = 'auth/login';
  static const String apiRegister = "auth/register";
  static const String apiSpecialization = "specialization/index";

  static const String token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzIxMTQxNzcxLCJleHAiOjE3MjEyMjgxNzEsIm5iZiI6MTcyMTE0MTc3MSwianRpIjoiZXluRnRVNjJ0U2ZiUU1SRyIsInN1YiI6IjE1NjAiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.bF1P2k0FYaHslADU4xmFGJLFNa3TNCVJB3W1_UoT8bE";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
