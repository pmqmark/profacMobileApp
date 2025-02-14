abstract class ILocalstorageRepo {
  Future<bool> saveData();
  Future<bool> getData();
}