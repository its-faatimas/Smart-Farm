import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'animals_grid_page_state.dart';

class AnimalsGridPageCubit extends Cubit<AnimalsGridPageState> {
  AnimalsGridPageCubit() : super(AnimalsGridPageInitial());
}
