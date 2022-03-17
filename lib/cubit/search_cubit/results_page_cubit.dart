import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'results_page_state.dart';

class ResultsPageCubit extends Cubit<ResultsPageState> {
  ResultsPageCubit() : super(ResultsPageInitial());
}
