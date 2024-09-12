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
      title: 'Choose Product ',
      des:
          'We Have a 100k Product , Choose \n Your Product From  Our \n E-commerce Shop'),
  OnbordingModel(
      path: Assets.onbording2,
      title: 'Easy And Safe Paymnet',
      des: ' You can pay in cash \n or through payment gateways'),
  OnbordingModel(
      path: Assets.onbording3,
      title: 'Track Your Order',
      des: ' Track Your Order'),
];
