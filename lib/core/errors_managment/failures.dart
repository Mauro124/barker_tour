class Failure {
  final String? message;

  Failure({this.message});

  @override
  String toString() => 'Failure(message: $message';
}

class GenericFailure extends Failure {
  GenericFailure({message = "Error"}) : super(message: message);
}

class EmailAlreadyInUseFailure extends Failure {
  EmailAlreadyInUseFailure({message = "El email ya está en uso"}) : super(message: message);
}

class InvalidEmailFailure extends Failure {
  InvalidEmailFailure({message = "El email es inválido"}) : super(message: message);
}

class WeakPasswordFailure extends Failure {
  WeakPasswordFailure({message = "La contraseña es muy débil"}) : super(message: message);
}

class WrongPasswordFailure extends Failure {
  WrongPasswordFailure({message = "La contraseña es incorrecta"}) : super(message: message);
}

class UserDisabledFailure extends Failure {
  UserDisabledFailure({message = "El usuario está deshabilitado"}) : super(message: message);
}

class UserNotFoundFailure extends Failure {
  UserNotFoundFailure({message = "El usuario no existe"}) : super(message: message);
}

class NoInternetFailure extends Failure {
  NoInternetFailure({message = "No hay conexión a internet"}) : super(message: message);
}

class ServerFailure extends Failure {
  ServerFailure({message = "Error en el servidor"}) : super(message: message);
}

class CacheFailure extends Failure {
  CacheFailure({message = "Error en el cache"}) : super(message: message);
}

class LocalDatabaseFailure extends Failure {
  LocalDatabaseFailure({message = "Error en el base de datos local"}) : super(message: message);
}

class NoUserFailure extends Failure {
  NoUserFailure({message = "No hay usuario guardado localmente. Inicia sesión para continuar"})
      : super(message: message);
}

class NoRecognitionsFailure extends Failure {
  NoRecognitionsFailure({message = "No hay detecciones guardadas"}) : super(message: message);
}

class NoRecognitionsToUploadFailure extends Failure {
  NoRecognitionsToUploadFailure({message = "No hay detecciones para subir"}) : super(message: message);
}

class NoRecognitionsToDownloadFailure extends Failure {
  NoRecognitionsToDownloadFailure({message = "No hay detecciones para descargar"}) : super(message: message);
}

class NoRecognitionsToSaveFailure extends Failure {
  NoRecognitionsToSaveFailure({message = "No hay detecciones para guardar"}) : super(message: message);
}

class GettingAmphibiansFailure extends Failure {
  GettingAmphibiansFailure({message = "Error al obtener los anfibios"}) : super(message: message);
}
