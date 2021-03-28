class Response {
  int code;
  String message;
  dynamic data;

  Response({
    this.code = 0,
    this.message = '',
    this.data = const {},
  });
}
