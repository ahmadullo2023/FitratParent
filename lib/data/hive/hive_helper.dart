import 'package:hive_ce/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveHelper {
  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);

    // Hive.registerAdapter(ProductAdapter());
    // Hive.registerAdapter(CartModelAdapter());

    // await Hive.openBox<CartModel>('cartBox');
    // await Hive.openBox<Product>('favoriteProducts');
    await Hive.openBox('authBox');
  }

  static Box get _authBox => Hive.box('authBox');

  static Future<void> setLoggedIn(bool value) async {
    await _authBox.put('isLoggedIn', value);
  }

  static bool isLoggedIn() {
    return _authBox.get('isLoggedIn', defaultValue: false);
  }

  static Future<void> setUserId(String value) async {
    await _authBox.put('phone', value);
  }

  static String getUserId() {
    return _authBox.get('phone');
  }
  static Future<void> clearAuthBox() async {
    await _authBox.clear();
  }
}

