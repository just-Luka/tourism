import 'package:eapp1/domain/cubit/firestore/category_cubit.dart';
import 'package:eapp1/domain/cubit/firestore/slider_cubit.dart';
import 'package:eapp1/presentation/widgets/frames/listview_center_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeChip extends StatefulWidget {
  const HomeChip({Key? key}) : super(key: key);

  @override
  State<HomeChip> createState() => _HomeChipState();
}

class _HomeChipState extends State<HomeChip> {
  int _activeChipIndex = 0;

  void activeChip(index, chipId) {
    BlocProvider.of<SliderCubit>(context).switchCategory(chipId);
    setState(() {
      _activeChipIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategoryLoading) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return ListViewCenterFrame(
                  itemDistance: 13,
                  child: Chip(
                    label: const Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text('No Data'),
                    ),
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                    backgroundColor: const Color.fromRGBO(232, 232, 232, 1.0),
                  ),
                  index: index,
                );
              },
            );
          } else if (state is CategoryLoaded) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.model.length,
              itemBuilder: (context, index) {
                return ListViewCenterFrame(
                  itemDistance: 13,
                  child: InputChip(
                    onPressed: () => activeChip(index, state.model[index].id),
                    label: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(state.model[index].name),
                    ),
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: _activeChipIndex == index
                            ? Theme.of(context).chipTheme.selectedColor
                            : Theme.of(context)
                                .primaryTextTheme
                                .titleLarge!
                                .color,
                        fontWeight: FontWeight.w500),
                    backgroundColor: _activeChipIndex == index
                        ? Theme.of(context).chipTheme.secondarySelectedColor
                        : Theme.of(context).chipTheme.backgroundColor,
                  ),
                  index: index,
                );
              },
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
