import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class  CustomButton extends StatelessWidget {
  const  CustomButton({super.key,  required this.onTap, this.isLoading=false});
final void Function()?onTap;
final bool? isLoading;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
onTap:onTap,
      child: Container(
      height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
      color:kPrimaryColor,
      borderRadius:BorderRadius.circular( 8),
        ),
      child: Center(

      child:isLoading==true?const CircularProgressIndicator(): Text("Add",style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      ),
    );
  }
}