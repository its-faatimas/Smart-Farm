import 'package:smartfarm/core/components/exporting_packages.dart';
import 'package:smartfarm/models/animal_category.dart';

class AnimalList {
  static final List<AnimalCategory> _animalList = [
    AnimalCategory(name: AppStrings.cow, image: MyAssetImages.cow),
    AnimalCategory(name: AppStrings.sheep, image: MyAssetImages.sheep),
    AnimalCategory(name: AppStrings.elephant, image: MyAssetImages.sheep),
    AnimalCategory(name: AppStrings.donkey, image: MyAssetImages.cow),
    AnimalCategory(name: AppStrings.horse, image: MyAssetImages.horse),
    AnimalCategory(name: AppStrings.hen, image: MyAssetImages.chicken),
    AnimalCategory(name: AppStrings.dick, image: MyAssetImages.cow),
    AnimalCategory(name: AppStrings.goat, image: MyAssetImages.horse),
    AnimalCategory(name: AppStrings.cow, image: MyAssetImages.cow),
  ];

  static List<AnimalCategory> get animals => _animalList;
}
