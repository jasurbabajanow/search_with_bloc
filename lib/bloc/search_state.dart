part of 'search_bloc.dart';

class SearchState {
  final List<UserModels> users;

  const SearchState({
    this.users = const [],
  });
}

final class SearchInitial extends SearchState {}
