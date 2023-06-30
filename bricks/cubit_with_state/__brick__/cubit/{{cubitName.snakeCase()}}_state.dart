import 'package:freezed_annotation/freezed_annotation.dart';
part '{{cubitName.snakeCase()}}_state.freezed.dart';

@freezed
class {{cubitName.pascalCase()}}State with _${{cubitName.pascalCase()}}State {
  const factory {{cubitName.pascalCase()}}State.initial() = {{cubitName.pascalCase()}}StateInitial;

  const factory {{cubitName.pascalCase()}}State.loading() = {{cubitName.pascalCase()}}StateLoading;

  const factory {{cubitName.pascalCase()}}State.success({required String data}) = {{cubitName.pascalCase()}}StateSuccess;

  const factory {{cubitName.pascalCase()}}State.error({required Exception exception}) = {{cubitName.pascalCase()}}StateError;
}