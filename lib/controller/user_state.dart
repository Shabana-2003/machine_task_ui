import 'package:equatable/equatable.dart';
import 'package:machine_task_ui/models/user_model.dart';


abstract class UserState extends Equatable {
  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {}

class UserLoading extends UserState {}

class UserLoaded extends UserState {
  final List<UserModel> users;
  final List<UserModel> filteredUsers;

  UserLoaded({required this.users, required this.filteredUsers});

  @override
  List<Object> get props => [users, filteredUsers];
}

class UserError extends UserState {
  final String message;

  UserError({required this.message});

  @override
  List<Object> get props => [message];
}
