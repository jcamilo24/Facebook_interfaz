import 'package:app_1_flutter/facebook_ui/facebook_ui.dart';
import 'package:app_1_flutter/widgets/column.dart';
import 'package:app_1_flutter/widgets/container.dart';
import 'package:app_1_flutter/widgets/container2.dart';
import 'package:app_1_flutter/widgets/cupertino_scaffold.dart';
import 'package:app_1_flutter/widgets/custom_font.dart';
import 'package:app_1_flutter/widgets/list_view.dart';
import 'package:app_1_flutter/widgets/mi_images.dart';
import 'package:app_1_flutter/widgets/my_icons.dart';
import 'package:app_1_flutter/widgets/row.dart';
import 'package:app_1_flutter/widgets/safe_area.dart';
import 'package:app_1_flutter/widgets/scaffold.dart';
import 'package:app_1_flutter/widgets/single_child_scroll_view.dart';
import 'package:app_1_flutter/widgets/stack.dart';
import 'package:app_1_flutter/widgets/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    builder: (_) => const MyApp(),
    enabled: !kReleaseMode,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: FacebookUi(),
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
