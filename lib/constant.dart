import 'package:flutter/material.dart';

class Settings {
  final String txt;
  final IconData icon;
  final IconData iconData;

  Settings({required this.txt, required this.icon, required this.iconData});
}

List<Settings> listItem = [
  Settings(
      txt: 'Payment Services',
      icon: Icons.money_outlined,
      iconData: Icons.arrow_right_alt),
  Settings(
      txt: 'Shopping & Services',
      icon: Icons.shopping_bag_outlined,
      iconData: Icons.arrow_right_alt),
  Settings(
      txt: 'Business Account',
      icon: Icons.storefront,
      iconData: Icons.arrow_right_alt),
  Settings(
      txt: 'Cards & Memberships',
      icon: Icons.credit_card_rounded,
      iconData: Icons.arrow_right_alt),
];

class IconBox {
  final String txt;
  final IconData icon1;
  final IconData icon2;
  final Color icon2color;

  IconBox(
      {required this.txt,
      required this.icon2color,
      required this.icon1,
      required this.icon2});
}

List<IconBox> iconBoxList = [
  IconBox(
      icon2color: Colors.green,
      txt: 'Payment RQ code',
      icon1: Icons.lock,
      icon2: Icons.arrow_circle_up_outlined),
  IconBox(
      txt: 'Receive RQ code',
      icon1: Icons.lock,
      icon2color: Colors.red,
      icon2: Icons.arrow_circle_down_outlined),
  IconBox(
      txt: 'Transfer to user',
      icon1: Icons.lock,
      icon2color: Colors.black,
      icon2: Icons.compare_arrows),
];

class Payment {
  final String title;
  final String subTitle;
  final String image;
  final String price;

  Payment(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.price});
}

List<Payment> paymentItemList = [
  Payment(
      subTitle: '14th March 2022',
      title: 'Vodafone Cash',
      price: '15,000 LE',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw98FtNczTwGLSWuwBX59kM0OPv4ut4XHeOw&usqp=CAU'),
  Payment(
      title: 'Fawry',
      subTitle: '14th March 2022',
      price:'1,000 LE' ,
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZtPcYV9Qi6Zj4ENKmCHr4JiPfaBLBLj2rjQ&usqp=CAU'),
  Payment(
      title: 'Ahmed Ali',
      subTitle: '14th March 2022',
      price: '5,000 LE',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjSaL3IvJn1InRtJQIfuRgOj4MiDG2scc7F9s_dojGpeswCNndf9srGdLNLM7WDCv8yZo&usqp=CAU'),
];
List<Payment> recentItemList = [
  Payment(
      title: 'Ahmed Ali',
      subTitle: '14th March 2022',
      price: '15,000 LE',
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjSaL3IvJn1InRtJQIfuRgOj4MiDG2scc7F9s_dojGpeswCNndf9srGdLNLM7WDCv8yZo&usqp=CAU'),

  Payment(
      subTitle: '14th March 2022',
      title: 'McDonald’s',
      price: '350 LE',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/McDonald%27s_Golden_Arches.svg/1200px-McDonald%27s_Golden_Arches.svg.png'),
  Payment(
      title: 'H&M',
      subTitle: '14th March 2022',
      price:'1089 LE' ,
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/H%26M-Logo.svg/709px-H%26M-Logo.svg.png'),
 ];
