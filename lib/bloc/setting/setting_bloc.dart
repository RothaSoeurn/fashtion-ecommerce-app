import 'package:fashion_ecom_app/bloc/setting/setting_event.dart';
import 'package:fashion_ecom_app/bloc/setting/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc() : super(SettingState()) {
    on<SetCurrentPageIndex>((event, emit) {
      emit(SettingState(currentPageIndex: event.index));
    });
  }
}
