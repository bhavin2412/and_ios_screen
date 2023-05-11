import 'package:and_ios_screen/provider/setting_provider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'ios/view/ios_scrren.dart';
void main()
{
  runApp(
      DevicePreview(
        builder: (context) {
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (context) => SettingProvider(),)
            ],
            child: MaterialApp(
              useInheritedMediaQuery: true,
              debugShowCheckedModeBanner: false,
              routes: {
                // '/':(context) => SettingANDROID(),
                '/':(context) => SettingIOS(),
              },
            ),
          );
        },
        enabled: !kReleaseMode,
      )
  );
}