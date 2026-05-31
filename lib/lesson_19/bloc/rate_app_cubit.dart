import 'package:flutter_bloc/flutter_bloc.dart';

enum Status { initial, loading, success, error }

class RateAppState {
  const RateAppState({required this.rating, this.status = Status.initial});

  final int rating;
  final Status status;
  RateAppState copyWith({int? rating, Status? status}) {
    return RateAppState(
      rating: rating ?? this.rating,
      status: status ?? this.status,
    );
  }
}

class RateAppCubit extends Cubit<RateAppState> {
  RateAppCubit() : super(RateAppState(rating: 0));

  void setRating(int rating) {
    emit(state.copyWith(rating: rating));
  }
}
