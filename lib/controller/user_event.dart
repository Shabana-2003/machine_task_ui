// bloc/user_event.dart
import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchUsers extends UserEvent {}

class FilterUsers extends UserEvent {
  final String query;

  FilterUsers(this.query);

  @override
  List<Object> get props => [query];
}
