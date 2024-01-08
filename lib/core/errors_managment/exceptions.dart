class NoInternetException implements Exception {
  final String message;

  NoInternetException({this.message = 'No Internet Connection'});
}

class ServerException implements Exception {
  final String message;

  ServerException({this.message = 'Server Error'});
}

class CacheException implements Exception {
  final String message;

  CacheException({this.message = 'Cache Error'});
}

class LocalDatabaseException implements Exception {
  final String message;

  LocalDatabaseException({this.message = 'Local Database Error'});
}

class NoUserException implements Exception {
  final String message;

  NoUserException({this.message = 'No User Saved Locally'});
}
