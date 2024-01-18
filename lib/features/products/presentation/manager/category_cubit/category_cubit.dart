import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());
  int index = 0;
  void changeCategoryIndex(int value) {
    index = value;
    emit(CategoryIndexChanged());
  }
}
