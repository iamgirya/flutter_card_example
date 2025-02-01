// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'card_container.dart';
import 'contact_icon.dart';
import 'icons.dart';
import 'name_title.dart';
import 'photo.dart';
import 'tools/logger.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CardContainer(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const NameTitle(
                      name: 'Гиренко Даниил',
                      companyName: 'Яндекс',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContactIcon(
                          onPressed: () {
                            logger.info('Press telegram');
                          },
                          icon: CVIcons.telegram,
                        ),
                        ContactIcon(
                          onPressed: () {
                            logger.info('Press github');
                          },
                          icon: CVIcons.github,
                        ),
                        ContactIcon(
                          onPressed: () {
                            logger.info('Press email');
                          },
                          icon: CVIcons.email,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Flexible(
                flex: 2,
                child: Photo(
                  assetsPath: 'assets/ava.jpeg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
