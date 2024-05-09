import 'package:fashion_ecom_app/bloc/item_filter/item_filter_event.dart';
import 'package:fashion_ecom_app/bloc/item_filter/item_filter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemFilterBloc extends Bloc<ItemFilterEvent, ItemFilterState> {
  ItemFilterBloc() : super(ItemFilterState()) {
    on<SetSelectedChipIndex>((event, emit) {
      emit(ItemFilterState(selectedChipIndex: event.index));
    });
  }
}
