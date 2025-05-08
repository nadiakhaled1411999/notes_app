import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.colorItem});
  final bool isActive;
  final Color colorItem;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 27,
              backgroundColor: colorItem,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: colorItem,
          );
  }
}

class ColorsItemList extends StatefulWidget {
  const ColorsItemList({super.key});

  @override
  State<ColorsItemList> createState() => _ColorsItemListState();
}

class _ColorsItemListState extends State<ColorsItemList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorItemList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).colorItem =
                      kColorItemList[index];
                  setState(() {});
                },
                child: ColorItem(
                  colorItem: kColorItemList[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
