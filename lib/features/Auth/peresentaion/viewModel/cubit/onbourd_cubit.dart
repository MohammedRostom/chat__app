import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'onbourd_state.dart';

class OnbourdCubit extends Cubit<OnbourdState> {
  OnbourdCubit() : super(OnbourdInitial());
}
