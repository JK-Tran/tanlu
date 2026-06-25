import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Thông báo'), centerTitle: true),
      body: Center(
        child: Text('Thông báo', style: TextStyle(fontSize: 22.sp)),
      ),
    );
  }
}
