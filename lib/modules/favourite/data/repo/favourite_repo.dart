abstract class FavoritesRepo {
  Future<void> toggleFavorite(String uid, String carId);
  Future<List<String>> getFavoriteIds(String uid);
}