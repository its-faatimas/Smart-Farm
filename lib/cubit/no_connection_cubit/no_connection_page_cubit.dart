import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'no_connection_page_state.dart';

class NoConnectionPageCubit extends Cubit<NoConnectionPageState> {
  NoConnectionPageCubit() : super(NoConnectionPageInitial());
}
