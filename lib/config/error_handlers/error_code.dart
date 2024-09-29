// ignore_for_file: constant_identifier_names

enum ErrorCode {
  ACCOUNT_ALREADY_EXISTS('La cuenta ya existe.\nInténtalo de nuevo con otra cuenta.'),
  ACCOUNT_NOT_FOUND('La cuenta no existe.\nInténtalo de nuevo con otra cuenta.'),
  INVALID_EMAIL('El email es inválido.\nInténtalo de nuevo con otro email.'),
  INVALID_PASSWORD('La contraseña es inválida.'),
  USER_NOT_FOUND('El usuario no existe.\nInténtalo de nuevo con otro usuario.'),
  INVALID_CREDENTIALS('Las credenciales son inválidas.\nInténtalo de nuevo con otras credenciales.'),

  SAVING_IMAGE_ERROR('Error al guardar la imagen.'),
  SAVING_VIDEO_ERROR('Error al guardar el video.'),
  LOADING_IMAGES_ERROR('Error al cargar las imágenes.'),
  LOADING_IMAGE_ERROR('Error al cargar la imagen.'),
  DELETING_IMAGE_ERROR('Error al eliminar la imagen.'),
  UPDATING_IMAGE_PARAMS_ERROR('Error al actualizar los parámetros de la imagen.'),

  // Generic error.
  UNEXPECTED_ERROR('Ups, algo salió mal.'),
  FORMAT_EXCEPTION('Error de formato.'),
  CACHE_ERROR('Error de caché.'),
  UNAUTHORIZED('No autorizado.'),
  SERVER_ERROR('Error del servidor.\nInténtalo de nuevo más tarde.');

  final String description;
  const ErrorCode(this.description);
}
