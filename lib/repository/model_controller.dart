
import 'package:package_get_it/repository/controller.dart';

import '../locator.dart';

class Receive_Controller {
  getNextData() async {
    //  Call the controller and receive a data
    return await getIt.get<controller>().getData();
  }
}
