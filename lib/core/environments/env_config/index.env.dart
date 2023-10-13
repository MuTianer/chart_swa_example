import 'package:chart_swa_example/core/environments/constants/constants.dart';
import 'package:chart_swa_example/core/environments/model/flavor_configuration.dart';
import 'dev.env.dart';
import 'ita.env.dart';
import 'itb.env.dart';
import 'prod.env.dart';
import 'stg.env.dart';

final flavors = <String, FlavorConfiguration>{
  FlavorsType.dev.type: devFlavorConfiguration,
  FlavorsType.ita.type: itaFlavorConfiguration,
  FlavorsType.itb.type: itbFlavorConfiguration,
  FlavorsType.stg.type: stgFlavorConfiguration,
  FlavorsType.prod.type: prodFlavorConfiguration
};
