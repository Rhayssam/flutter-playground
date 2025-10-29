import 'package:flutterplayground/data/services/local_storage/session/user_session_storage.dart';
import 'package:flutterplayground/data/services/local_storage/shared_preferences/shared_preferences_local_storage.dart';
import 'package:flutterplayground/data/services/local_storage/shared_preferences/shared_preferences_local_storage_impl.dart';
import 'package:flutterplayground/ui/core/theme/theme_controller.dart';
import 'package:get/get.dart';

class Dependencies {
  Future<void> initialize() async {
    await Get.putAsync<SharedPreferencesLocalStorage>(
      () async => await SharedPreferencesLocalStorageImpl.init(),
      permanent: true,
    );

    Get.put<UserSessionStorage>(
      UserSessionStorage(Get.find<SharedPreferencesLocalStorage>()),
      permanent: true,
    );

    Get.put<ThemeController>(
      ThemeController(Get.find<UserSessionStorage>()),
      permanent: true,
    );
  }
}
