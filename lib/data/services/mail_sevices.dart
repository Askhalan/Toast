import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MailServices extends GetxController{
  static MailServices get instance => Get.find();



 Future<void> launchInApp(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

}