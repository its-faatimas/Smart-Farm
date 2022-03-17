import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'on_boarding_page_state.dart';

class OnBoardingPageCubit extends Cubit<OnBoardingPageState> {
  OnBoardingPageCubit() : super(OnBoardingPageInitial());
  int _currentPage = 0;
  int pagesLength = 3;
  final PageController controller = PageController(
    initialPage: 0,
  );

  changeCurrentPage(int value) {

    _currentPage = value;
    emit(OnBoardingPageInitial());
  }
  incrementCount(){
    if(_currentPage != 3) {
      _currentPage++;
    }
    debugPrint( "before:" + currentPage.toString());
    emit(OnBoardingPageInitial());
  }

  int get currentPage => _currentPage;
}
