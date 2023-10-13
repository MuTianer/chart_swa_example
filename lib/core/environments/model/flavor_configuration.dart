import 'package:freezed_annotation/freezed_annotation.dart';

part 'flavor_configuration.freezed.dart';
part 'flavor_configuration.g.dart';

@freezed
class FlavorConfiguration with _$FlavorConfiguration {
  factory FlavorConfiguration({required String apiBaseUrl}) =
      _FlavorConfiguration;

  factory FlavorConfiguration.fromJson(Map<String, dynamic> json) =>
      _$FlavorConfigurationFromJson(json);
}
