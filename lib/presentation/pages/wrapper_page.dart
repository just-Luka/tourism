import 'package:eapp1/data/repository/app_repository.dart';
import 'package:eapp1/presentation/pages/home/home_page.dart';
import 'package:eapp1/presentation/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

class WrapperPage extends StatelessWidget {
  final bool isFirstBootstrap = true;

  const WrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppRepository().getIsFirstBootstrap() ? WelcomePage() : const HomePage(),
    );
  }

}
