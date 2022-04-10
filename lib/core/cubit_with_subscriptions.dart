import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_widget/share_widget.dart';

class CubitWithSubscriptions<T> extends BaseCubit<T> {
  final List<StreamSubscription> _subscription = [];

  CubitWithSubscriptions(T initialState) : super(initialState);

  void cancelAllSubscriptions() {
    _subscription
      ..forEach((_) => _.cancel())
      ..clear();
  }

  void addSubscriptions(StreamSubscription input) {
    _subscription.add(input);
  }

  @override
  Future<void> close() {
    cancelAllSubscriptions();
    return super.close();
  }
}
