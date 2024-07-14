import 'package:nitric_sdk/nitric.dart';

void main() {
  final helloApi = Nitric.api("main");

  helloApi.get("/hello/:name", (ctx) async {
    ctx.enableCors();

    final name = ctx.req.pathParams["name"]!;

    ctx.res.body = "Hello $name";

    return ctx;
  });
}

extension EnhanceHttpContext on HttpContext {
  void enableCors() {
    print('enabling cors');
    res.headers['Access-Control-Allow-Origin'] = ['*'];
    res.headers['Access-Control-Allow-Headers'] = [
      'Origin, Content-Type, Accept, Authorization',
    ];
    res.headers['Access-Control-Allow-Methods'] = ['GET,POST,DELETE,OPTIONS'];
  }
}
