import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

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
  List<Color> colorItemList = [
    const Color(0xffe0afa0).withOpacity(0.8),
    const Color(0xfffca311).withOpacity(0.8),
    const Color(0xffDE435F).withOpacity(0.8),
    const Color(0xff7952AA).withOpacity(0.8),
    const Color(0xff319855).withOpacity(0.8),
    const Color(0xfffca311).withOpacity(0.8),
    const Color(0xffDE435F).withOpacity(0.8),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorItemList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  colorItem: colorItemList[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
