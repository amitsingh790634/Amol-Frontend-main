import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    centerTitle: false,
                    title: Text(
                      'Change Address',
                      style: TextStyle(fontSize: 18.sp, color: Colors.black54),
                    ),
                  ),
                ],
              ).p(3.w),
              Container(
                height: 70.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/images/map.png'),
                        fit: BoxFit.cover)),
              ),
              2.h.heightBox,
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                // color: Colors.white,
                width: 90.w,
                height: 8.h,
                child: Center(
                  child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: 'Search product by name',
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.teal,
                        size: 4.h,
                      ),
                      2.w.widthBox,
                      Text(
                        'Choose a saved place',
                        style:
                            TextStyle(fontSize: 16.sp, color: Colors.black45),
                      )
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,
                      size: 3.h, color: Colors.black45)
                ],
              ).pOnly(right: 3.h, left: 3.h).onTap(() {
                Get.back();
              })
            ],
          ),
        ),
      ),
    );
  }
}
