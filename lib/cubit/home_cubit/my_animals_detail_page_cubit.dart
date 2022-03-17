import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_animals_detail_page_state.dart';

class MyAnimalsDetailPageCubit extends Cubit<MyAnimalsDetailPageState> {
  MyAnimalsDetailPageCubit() : super(MyAnimalsDetailPageInitial());
}
