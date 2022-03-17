import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_page_state.dart';

class SettingsPageCubit extends Cubit<SettingsPageState> {
  SettingsPageCubit() : super(SettingsPageInitial());
}
