import 'package:flutter/material.dart';

import 'force_update_view_model.dart';

class ForceUpdateView extends ForceUpdateViewModel {
  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Force Update @vb10")),
      body: Center(
        child: isForceUpdate ? CircularProgressIndicator() : FlutterLogo(),
      ),
    );
  }
}
