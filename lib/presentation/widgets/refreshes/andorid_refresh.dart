import 'package:eapp1/domain/cubit/firestore/category_cubit.dart';
import 'package:eapp1/domain/cubit/firestore/slider_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AndroidRefresh extends StatelessWidget {
  final Widget child;

  Future<void> categoryTrigger(context) async {
    await BlocProvider.of<CategoryCubit>(context).fetchCategory(true);
    await BlocProvider.of<SliderCubit>(context).fetchSlider(true);
  }

  const AndroidRefresh({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      child: child,
      onRefresh: () => categoryTrigger(context),
      edgeOffset: 100,
      displacement: 30,
    );
  }
}
