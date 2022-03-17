import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_second_state.dart';

class SignUpSecondCubit extends Cubit<SignUpSecondState> {
  SignUpSecondCubit() : super(SignUpSecondInitial());
}
