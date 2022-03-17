import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'farm_detail_page_state.dart';

class FarmDetailPageCubit extends Cubit<FarmDetailPageState> {
  FarmDetailPageCubit() : super(FarmDetailPageInitial());
}
