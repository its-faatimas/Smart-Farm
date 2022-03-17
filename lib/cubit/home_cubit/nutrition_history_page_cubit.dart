import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nutrition_history_page_state.dart';

class NutritionHistoryPageCubit extends Cubit<NutritionHistoryPageState> {
  NutritionHistoryPageCubit() : super(NutritionHistoryPageInitial());
}
