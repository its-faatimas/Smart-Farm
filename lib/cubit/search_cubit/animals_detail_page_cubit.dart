import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'animals_detail_page_state.dart';

class AnimalsDetailPageCubit extends Cubit<AnimalsDetailPageState> {
  AnimalsDetailPageCubit() : super(AnimalsDetailPageInitial());
}
