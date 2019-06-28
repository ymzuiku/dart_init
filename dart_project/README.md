# 便捷生成 dart 项目

将当前项目注册到本地路径

```yaml
# pubspec.yaml
# 此时运行的是 dart_init/bin/main.dart
executables:
  dart_init: main
```

```sh
$ pub global activate --source path ./ --overwrite
```

使用本地命令执行:

```sh
$ dart_init ...
# 或
$ pub global run dart_init:main
```

## 查看帮助

```dart
$ dart_init --help
```
