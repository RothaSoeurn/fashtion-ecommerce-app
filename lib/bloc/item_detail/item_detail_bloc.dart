import 'package:fashion_ecom_app/bloc/item_detail/item_detail_event.dart';
import 'package:fashion_ecom_app/bloc/item_detail/item_detail_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemDetailBloc extends Bloc<ItemDetailEvent, ItemDetailState> {
  ItemDetailBloc() : super(ItemDetailState()) {
    on<ItemDetailEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
