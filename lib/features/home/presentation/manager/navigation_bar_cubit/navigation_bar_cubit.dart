import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(NavigationBarInitial());
  int index = 0;
  void changeNavigationBarIndex(int value) {
    
    index = value;
    emit(NavigationBarNewTab());
  }
}
