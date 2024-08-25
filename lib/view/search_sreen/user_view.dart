import 'package:flutter/material.dart';
import 'package:machine_task_ui/models/user_model.dart';
import 'package:machine_task_ui/controller/user_repository.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  late Future<List<UserModel>> _futureUsers;
  final TextEditingController _searchController = TextEditingController();
  List<UserModel> _users = [];
  List<UserModel> _filteredUsers = [];

  @override
  void initState() {
    super.initState();
    _futureUsers = UserRepository().fetchUsers();
    _searchController.addListener(_filterUsers);
  }

  @override
  void dispose() {
    _searchController.removeListener(_filterUsers);
    _searchController.dispose();
    super.dispose();
  }

  void _filterUsers() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredUsers = _users.where((user) {
        final nameLower = user.userName.toLowerCase();
        final emailLower = user.email.toLowerCase();
        return nameLower.contains(query) || emailLower.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by name or email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
      ),
      body: FutureBuilder<List<UserModel>>(
        future: _futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No users found'));
          }
          _users = snapshot.data!;
          _filteredUsers = _users;

          return ListView.builder(
            itemCount: _filteredUsers.length,
            itemBuilder: (context, index) {
              final user = _filteredUsers[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: user.profileImage != null
                      ? NetworkImage(user.profileImage!)
                      : null,
                  child: user.profileImage == null
                      ? const Icon(Icons.person)
                      : null,
                ),
                title: Text(user.userName),
                subtitle: Text(user.email),
              );
            },
          );
        },
      ),
    );
  }
}
