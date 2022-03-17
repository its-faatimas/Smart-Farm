import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  int indicatorIndex = 0;
  int indicatorLength = 4;

  changeIndicatorIndex(int value) {
    indicatorIndex = value;
    emit(HomePageInitial());
  }
}
