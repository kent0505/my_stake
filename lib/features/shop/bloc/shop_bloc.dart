import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_stake/core/utils.dart';

import '../models/stock.dart';

part 'shop_event.dart';
part 'shop_state.dart';

class ShopBloc extends Bloc<ShopEvent, ShopState> {
  ShopBloc() : super(ShopInitial()) {
    on<BuyStockEvent>((event, emit) async {
      await getData();
      if (event.stock.price * event.count > myCoins) {
        emit(ShopErrorState());
      } else {
        await saveStock(event.stock.id, event.count);
        await saveMyCoins(event.stock.price * event.count);
        emit(ShopSuccessState());
      }
    });
  }
}
