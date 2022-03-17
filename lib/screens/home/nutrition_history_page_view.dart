import 'package:flutter/material.dart';
import 'package:smartfarm/core/components/exporting_packages.dart';

class NutritionHistoryPageView extends StatelessWidget {
  const NutritionHistoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ovqatlanish tarixi'),
        leading: IconButton(
          padding: EdgeInsets.zero,
            onPressed: () => Navigator.pop(context),
            icon: SvgPicture.asset(MyAssetIcons.left)),
      ),
      body: ListView.builder(
        itemCount: 9,
        shrinkWrap: true,
        itemBuilder: (context,index)=> const MyNutrionHistoryItem()),
    );
  }
}
