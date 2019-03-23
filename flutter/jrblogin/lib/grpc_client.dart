import 'dart:async';

import 'package:grpc/grpc.dart';

import 'package:jrblogin/src/generated/helloworld.pb.dart';
import 'package:jrblogin/src/generated/helloworld.pbgrpc.dart';

Future<void> sayHello(String arg) async {
  final channel = new ClientChannel('localhost',
      port: 50051,
      options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure()));
  final stub = new GreeterClient(channel);

  final name = arg  + 'world';

  try {
    final response = await stub.sayHello(new HelloRequest()..name = name);
    print('Greeter client received: ${response.message}');
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
