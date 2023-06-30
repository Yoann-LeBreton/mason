import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '{{cubitName.snakeCase()}}_state.dart';


@injectable
class {{cubitName.pascalCase()}}Cubit extends Cubit<{{cubitName.pascalCase()}}State>{
  {{cubitName.pascalCase()}}Cubit() : super(const {{cubitName.pascalCase()}}StateInitial());

  Future<void> example() async {
    safeEmit(const {{cubitName.pascalCase()}}StateLoading());
    //TODO: execute code
    safeEmit(const {{cubitName.pascalCase()}}StateSuccess(data: 'complete') );
  }

  void safeEmit({{cubitName.pascalCase()}}State state){
    if(!isClosed){
      emit(state);
    }
  }
}