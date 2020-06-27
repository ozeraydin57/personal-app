import 'package:url_launcher/url_launcher.dart';

extension GotoExtension on String {
  Future<String> get gotEmail async {
    var url = "mailto:" + this;
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Future<String> get goToWeb async {
    var url = "https://" + this;
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
