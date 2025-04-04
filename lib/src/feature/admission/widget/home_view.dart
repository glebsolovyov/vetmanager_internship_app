import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/text_style_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/app_button.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/default_app_bar.dart';

/// {@template home_view}
/// HomeView widget.
/// {@endtemplate}
class HomeView extends StatelessWidget {
  /// {@macro home_view}
  const HomeView({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: 'Vet Manager', centerTitle: true),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 300,
          child: Column(
            children: [
              Text(
                'Для перехода к списку приёмов, нажмите на кнопку ниже',
                style: context.textStyles.bodyMedium
                    .withColor(context.colors.onSecondary),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              AppButton(
                onPressed: () {
                  context.router.push(
                    AppRoute(path: '/admissions_list'),
                  );
                },
                child: Text('Перейти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
