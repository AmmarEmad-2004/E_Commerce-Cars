abstract class AddFavouriteState {}

class AddFavouritesInitial extends AddFavouriteState {}

class AddFavouritesLoading extends AddFavouriteState {}

class AddFavouritesSuccess extends AddFavouriteState {
  final List<String> favourites;
  AddFavouritesSuccess(this.favourites);
}

class AddFavouritesError extends AddFavouriteState {
  final String message;
  AddFavouritesError(this.message);
}
