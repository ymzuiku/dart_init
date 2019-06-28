# 便捷生成 dart 项目

## 克隆项目

```sh
dart_init(){
  git clone --depth=1 https://github.com/ymzuiku/dart_init $1 &&
  cd $1 && rm -rf .git
}
dart_init <your-project>
```

## 将当前项目注册到本地路径

```yaml
# pubspec.yaml
# 此时运行的是 dart_init/bin/main.dart
executables:
  dart_init: main
```

```sh
$ pub global activate --source path ./ --overwrite
```

## 使用本地命令执行:

```sh
$ dart_init ...
# 或
$ pub global run dart_init:main
```

## 查看帮助

```dart
$ dart_init --help
```
