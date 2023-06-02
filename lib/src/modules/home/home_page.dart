import 'package:flutter/material.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../../core/ui/styles/app_text_styles.dart';
import '../templates/base_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      body: Column(
        children: [
          Text(
            'Text extra bold',
            style: context.appTextStyles.textTitle,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text('Login'),
                ),
                validator: (String) => 'Erro',
              ),
            ),
          ),
          SizedBox(
            height: 52,
            width: 220,
            child: ElevatedButton(onPressed: () {}, child: const Text('Botão')),
          ),
        ],
      ),
    );
  }
}
