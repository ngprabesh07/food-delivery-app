import 'package:flutter/material.dart';
import 'package:get/get.dart';

buildLanguageDialog(BuildContext context) {
  final List locale = [
    {'name': "ENGLISH", 'locale': Locale('en', 'US')},
    {'name': 'नेपाली ', 'locale': Locale('ne', 'NP')},
  ];
  updatelanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('CH'.tr),
            content: SizedBox(
              width: 200,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Text(locale[index]['name']),
                        onTap: () {
                          print(locale[index]['name']);
                          updatelanguage(locale[index]['locale']);
                        },
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: locale.length),
            ),
          );
        });
  }