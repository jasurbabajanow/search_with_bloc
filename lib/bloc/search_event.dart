part of 'search_bloc.dart';

sealed class SearchEvent {}

class SearchUserEvent extends SearchEvent {
  final String query;

  SearchUserEvent(this.query);
}
