// // bloc/user_bloc.dart
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'user_event.dart';
// import 'user_state.dart';
// import '../repository/user_repository.dart';
// import '../model/user_model.dart';

// class UserBloc extends Bloc<UserEvent, UserState> {
//   final UserRepository userRepository;
//   List<User> _allUsers = [];

//   UserBloc({required this.userRepository}) : super(UserInitial()) {
//     on<FetchUsers>((event, emit) async {
//       emit(UserLoading());
//       try {
//         final users = await userRepository.fetchUsers();
//         _allUsers = users; // Save fetched users for filtering
//         emit(UserLoaded(users: users));
//       } catch (e) {
//         emit(UserError(message: e.toString()));
//       }
//     });

//     on<FilterUsers>((event, emit) {
//       final filteredUsers = _allUsers.where((user) {
//         final query = event.query.toLowerCase();
//         return user.name.toLowerCase().contains(query) ||
//                user.email.toLowerCase().contains(query);
//       }).toList();
//       emit(UserFiltered(filteredUsers: filteredUsers));
//     });
//   }
// }
