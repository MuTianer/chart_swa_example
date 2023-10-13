enum FlavorsType {
  dev('DEV'),
  ita('ITA'),
  itb('ITB'),
  stg('STG'),
  prod('PROD');

  const FlavorsType(this._flavorType);

  final String _flavorType;

  String get type => _flavorType;
}
