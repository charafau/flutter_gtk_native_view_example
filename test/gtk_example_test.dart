import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gtk_example/gtk_example.dart';

void main() {
  const MethodChannel channel = MethodChannel('gtk_example');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    // expect(await GtkExample.platformVersion, '42');
  });
}
