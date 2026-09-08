abstract final class AppConstants {
  // Application
  static const String appName = 'Aura';
  static const String appVersion = '1.0.0';
  static const String developerName = 'Ahmed Said';

  // File Limits
  static const int maxFileSizeInMb = 1000;

  // Application Limits
  static const int maxRetryAttempts = 3;
  static const int maxRecentFiles = 20;

  // Network
  static const int connectionTimeoutSeconds = 30;
  static const int receiveTimeoutSeconds = 30;
  static const int sendTimeoutSeconds = 30;
}