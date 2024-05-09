abstract class ItemFilterEvent {}

class SetSelectedChipIndex extends ItemFilterEvent {
  int index;
  SetSelectedChipIndex({required this.index});
}

class SelectIconFilterProduct extends ItemFilterEvent {
  int index;
  SelectIconFilterProduct({required this.index});
}
