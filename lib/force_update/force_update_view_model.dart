import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

import 'force_update.dart';
import 'model/force_update_model.dart';
import 'model/query_enum.dart';
import 'widget/force_update_widget.dart';

abstract class ForceUpdateViewModel extends State<ForceUpdate> {
  PackageInfo _packageInfo;
  final _baseUrl = 'http://localhost:3000';

  bool isForceUpdate = false;

  Future<void> init() async {
    await _deviceInfoInit();
    final isUpadete = await _checkForceUpdate();

    if (isUpadete) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => ForceUpdateDialog(),
      );
    }

    setState(() {
      isForceUpdate = isForceUpdate;
    });
  }

  Future<void> _deviceInfoInit() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }

  Future<bool> _checkForceUpdate() async {
    final response = await Dio().get('$_baseUrl/version',
        queryParameters: Map.fromEntries([QueryValues.PLATFORM.platformQuery, QueryValues.PLATFORM.versionQuery(_packageInfo.version)]));

    if (response.statusCode == HttpStatus.ok) {
      final model = ForceUpdateModel.fromJson(response.data);
      return model.isForceUpdate;
    } else {
      // TODO :Handle Execpiton
      return false;
    }
  }
}
