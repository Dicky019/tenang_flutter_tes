class DasboardState {
  final int index;

  const DasboardState({
    this.index = 0,
  });

  DasboardState copyWith({
    int? index,
  }) {
    return DasboardState(
      index: index ?? this.index,
    );
  }
}
