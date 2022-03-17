import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_change_page_state.dart';

class LanguageChangePageCubit extends Cubit<LanguageChangePageState> {
  LanguageChangePageCubit() : super(LanguageChangePageInitial());
}
