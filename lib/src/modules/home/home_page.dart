import 'package:flutter/material.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/app_colors.dart';
import '../../core/ui/styles/app_text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
        child: Stack(
          children: [
            Text(
              context.screenWidth.toString(),
            ),
            Container(
              color: context.colors.primary,
              height: context.percentHeight(.9),
              width: context.percentWidth(.5),
            ),
            Text(
              'Text extra bold',
              style: context.appTextStyles.textTitle,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showLoader();
          await Future.delayed(const Duration(seconds: 2));
          hideLoader();
          showSuccess('Carregou corretamente');
        },
      ),
    );
  }
}
