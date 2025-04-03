import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/text_style_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/app_button.dart';

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
    final appColors = Theme.of(context).colorScheme;
    final appTextStyles = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vet Manager',
          style: appTextStyles.titleMedium.withColor(appColors.onPrimary),
        ),
        backgroundColor: appColors.primary,
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 300,
          child: Column(
            children: [
              Text(
                'Для перехода к списку приёмов, нажмите на кнопку ниже',
                style:
                    appTextStyles.bodyMedium.withColor(appColors.onSecondary),
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
