import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'animals_category_page_state.dart';

class AnimalsCategoryPageCubit extends Cubit<AnimalsCategoryPageState> {
  AnimalsCategoryPageCubit() : super(AnimalsCategoryPageInitial());
}
