// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'constants/constants.dart';
import 'model/flavor_configuration.dart';
import 'env_config/index.env.dart';

void loadFlavorConfig(String? flavorName) {
  FlavorConfig(
    name: flavorName,
    color: CupertinoColors.systemBlue,
    location: BannerLocation.topStart,
    variables: {'config': flavors[flavorName]},
  );
}

FlavorConfiguration get flavorConfig =>
    FlavorConfig.instance.variables["config"] as FlavorConfiguration;
