class ProductConfig {
  static final ProductConfig instance = ProductConfig._("qwer");

  final String apiKey;

  ProductConfig._(this.apiKey);
}
