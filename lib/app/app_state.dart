class AppState {
  const AppState({this.loggedIn = false});

  final bool loggedIn;

  AppState copyWith({bool? loggedIn}) {
    return AppState(
      loggedIn: loggedIn ?? this.loggedIn,
    );
  }
}
