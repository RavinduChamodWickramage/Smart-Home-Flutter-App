import 'package:smart_home/features/devices/presentation/pages/devices.page.dart';
import 'package:smart_home/features/landing/presentation/pages/home.page.dart';
import 'package:smart_home/features/navigation/data/models/bottom_bar_nav_item.dart';
import 'package:smart_home/features/rooms/rooms.page.dart';
import 'package:smart_home/features/settings/settings.page.dart';
import 'package:smart_home/helpers/enums.dart';

class BottomNavBarRepository {

  List<BottomBarNavItemModel> getBottomBarNavItems() {
    return const [
      BottomBarNavItemModel(
          iconOption: FlickyAnimatedIconOptions.barhome,
          route: HomePage.route,
          isSelected: true
      ),
      BottomBarNavItemModel(
          iconOption: FlickyAnimatedIconOptions.barrooms,
          route: RoomsPage.route
      ),
      BottomBarNavItemModel(
          iconOption: FlickyAnimatedIconOptions.bardevices,
          route: DevicesPage.route
      ),
      BottomBarNavItemModel(
          iconOption: FlickyAnimatedIconOptions.barsettings,
          route: SettingsPage.route
      )
    ];
  }
}