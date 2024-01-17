part of 'navigation_bar_cubit.dart';

@immutable
sealed class NavigationBarState {}

class NavigationBarInitial extends NavigationBarState {}

class NavigationBarNewTab extends NavigationBarState {}
