import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionTwoContainer extends StatelessWidget {
  const SectionTwoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: (){},
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
                'assets/around_me.svg',
                semanticsLabel: 'Hospitals around me',
              ),
             Text('Hospitals Around Me', style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),),
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
