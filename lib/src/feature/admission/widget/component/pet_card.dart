import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/app_container.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/pet.dart';
import 'package:vetmanager_internship_app/src/feature/admission/utils/enum/pet_sex.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/component/info_container.dart';

/// {@template pet_card}
/// PetCard widget.
/// {@endtemplate}
class PetCard extends StatelessWidget {
  /// {@macro pet_card}
  const PetCard({
    super.key,
    required this.pet,
  });

  final Pet pet;

  @override
  Widget build(BuildContext context) {
    String petBreed;
    if (pet.petBreed != null && pet.petBreed != '') {
      petBreed = pet.petBreed!;
    } else {
      petBreed = 'Неизвестна';
    }
    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Инфо о питомце', style: context.textStyles.bodyLarge),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.pets, size: 32),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pet.alias,
                    style: context.textStyles.bodyMedium,
                  ),
                  if (pet.birthday != null)
                    Text(
                      pet.birthday.toString(),
                      style: context.textStyles.bodyMedium,
                    ),
                ],
              )
            ],
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: InfoContainer(
                  title: 'Пол:',
                  subTitle: pet.sex.title,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: InfoContainer(
                  title: 'Порода:',
                  subTitle: petBreed,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
