import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionTwoContainer extends StatelessWidget {
  const SectionTwoContainer({super.key, required this.containerName, required this.assetName, required this.onClick});

  final String containerName ;
  final String assetName;
  // ignore: prefer_typing_uninitialized_variables
  final onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                assetName,
                semanticsLabel: 'Hospitals',
              ),
             Text(containerName, style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),),
              SvgPicture.asset(
                'assets/view.svg',
                semanticsLabel: 'Hospitals around me',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
