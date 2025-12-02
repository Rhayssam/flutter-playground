final class Routes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String material = '/material';
  // 1 - Rotas do Material
  // 1.1 - Actions
  static const String commonButtons = '/material/actions/commonButtons';
  static const String fab = '/material/actions/fab';
  static const String extendedFab = '/material/actions/extendedFab';
  static const String iconButton = '/material/actions/iconButton';
  static const String segmentedButton = '/material/actions/segmentedButton';
  // 1.2 - Communication
  static const String badge = '/material/communication/badge';
  static const String linearProgressIndicator = '/material/communication/linearProgressIndicator';
  static const String snackbar = '/material/communication/snackbar';
  // 1.3 - Containment
  static const String alertDialog = '/material/containment/alertDialog';
  static const String bottomSheet = '/material/containment/bottomSheet';
  static const String card = '/material/containment/card';
  static const String divider = '/material/containment/divider';
  static const String listTile = '/material/containment/listTile';
  // 1.4 - Navigation
  static const String appBar = '/material/navigation/appBar';

  static const String notFound =
      '/'; //! O Getx sempre redireciona para a rota raiz se a rota não for encontrada
}
