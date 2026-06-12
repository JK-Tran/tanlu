import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoạt động'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Hoạt động', style: TextStyle(fontSize: 22.sp)),
      ),
    );
  }
}
