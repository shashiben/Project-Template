abstract class KeyStorageService {
  Future saveToDisk<T>(String key, T content);
  getValue(String key);
}
