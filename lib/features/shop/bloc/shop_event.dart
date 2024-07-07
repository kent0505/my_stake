part of 'shop_bloc.dart';

abstract class ShopEvent {}

class BuyStockEvent extends ShopEvent {
  final Stock stock;
  final int count;
  BuyStockEvent({
    required this.stock,
    required this.count,
  });
}
