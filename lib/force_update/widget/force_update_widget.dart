import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class ForceUpdateDialog extends StatelessWidget {
  //MARK: istead of this https://apps.apple.com/app/1503350537
  final appStore = 'https://apps.apple.com/tr/app/cumhuriyet/id1503350537';
  final googlePlayStore = 'market://details?id=tr.com.vbt.cumhuriyetmobileapp';

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: AlertDialog(
        actions: [
          buildRaisedButtonUpdate(),
          buildRaisedButtonCancel(),
        ],
        content: buildTextTitle(context),
      ),
    );
  }

  RaisedButton buildRaisedButtonCancel() => RaisedButton(color: Colors.red, child: Text("Cancel"), onPressed: _onCancelPressed);

  RaisedButton buildRaisedButtonUpdate() => RaisedButton(child: Text("Update!"), onPressed: _openStoreLink);

  Text buildTextTitle(BuildContext context) =>
      Text("Version Update Warning ⚠️", style: Theme.of(context).textTheme.headline4, textAlign: TextAlign.center);

  void _openStoreLink() {
    launch(Platform.isIOS ? appStore : googlePlayStore);
  }

  void _onCancelPressed() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
  }
}
