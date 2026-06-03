enum Flavor {
  develop,
  staging,
  production;

  static Flavor get current {
    const name = String.fromEnvironment('FLAVOR', defaultValue: 'develop');
    return Flavor.values.firstWhere(
      (f) => f.name == name.toLowerCase(),
      orElse: () => Flavor.develop,
    );
  }

  bool get isDevelop => this == Flavor.develop;
  bool get isStaging => this == Flavor.staging;
  bool get isProduction => this == Flavor.production;
}
