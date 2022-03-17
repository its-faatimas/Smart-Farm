import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'regions_list_page_state.dart';

class RegionsListPageCubit extends Cubit<RegionsListPageState> {
  RegionsListPageCubit() : super(RegionsListPageInitial());
}
