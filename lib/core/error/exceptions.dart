import 'package:testapp/core/error/error_model.dart';

class ServerExceptions implements Exception {
  final ErrorModel errorModel;

  ServerExceptions(this.errorModel);
}

class BadCertificateException extends ServerExceptions {
  BadCertificateException(super.errorModel);
}

class BadResposneException extends ServerExceptions {
  BadResposneException(super.errorModel);
}

class ConnectionTimeoutException extends ServerExceptions {
  ConnectionTimeoutException(super.errorModel);
}

class FetchDataException extends ServerExceptions {
  FetchDataException(super.messageModel);
}

class BadRequestException extends ServerExceptions {
  BadRequestException(super.messageModel);
}

class UnauthorizedException extends ServerExceptions {
  UnauthorizedException(super.messageModel);
}

class ForbiddenException extends ServerExceptions {
  ForbiddenException(super.messageModel);
}

class NotFoundException extends ServerExceptions {
  NotFoundException(super.messageModel);
}

class ConflictException extends ServerExceptions {
  ConflictException(super.messageModel);
}

class CancleExeption extends ServerExceptions {
  CancleExeption(super.messageModel);
}
