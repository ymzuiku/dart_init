library dart_init;

import 'dart:io';
import 'package:args/args.dart';
import 'package:path/path.dart' as path;

ArgResults args;

void main(List<String> arguments) {
// 创建ArgParser的实例，同时指定需要输入的参数
  final ArgParser argParser = new ArgParser()
    ..addOption('init', abbr: 'i', help: "Overlay file", defaultsTo: 'true')
    ..addFlag('help',
        abbr: 'h', negatable: false, help: "Displays this help information.");

  args = argParser.parse(arguments);

  if (args['help']) {
    print("""
---- HELP ----
${argParser.usage}
""");
  } else {
    logic();
  }
}

void logic() {
  print(Directory.current.path);
  print(Process);
  File(path.relative('README2.md'))
      .writeAsStringSync(File('../README.md').readAsStringSync());
}
