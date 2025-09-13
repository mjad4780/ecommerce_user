import '../core/constans/icons.dart';

class OnbordingModel {
  final String path;
  final String title;
  final String des;

  OnbordingModel({required this.path, required this.title, required this.des});
}

List<OnbordingModel> onbordingData = [
  OnbordingModel(
    path: Assets.onbording1,
    title: 'Choose Product',
    des: 'We have over 100k products for you.\n'
        'Browse easily through categories,\n'
        'compare items, and choose what suits\n'
        'your needs from our E-commerce shop.',
  ),
  OnbordingModel(
    path: Assets.onbording2,
    title: 'Easy And Safe Payment',
    des: 'Pay the way you prefer.\n'
        'Whether by cash on delivery or\n'
        'secure online payment gateways,\n'
        'we ensure your transactions are safe\n'
        'and smooth every time.',
  ),
  OnbordingModel(
    path: Assets.onbording3,
    title: 'Track Your Order',
    des: 'Stay updated with your order status.\n'
        'From the moment you confirm your\n'
        'purchase until it reaches your door,\n'
        'track every step with real-time updates.',
  ),
];
