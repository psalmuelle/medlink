import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/pages/hospital_information.dart';

class HospitalTile extends StatelessWidget {
  const HospitalTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset(
            'assets/hospital_logo.svg',
            colorFilter: ColorFilter.mode(
                Theme.of(context).primaryColor, BlendMode.srcIn),
            semanticsLabel: 'Hospital Logo',
          ),
        ),
        title: const Text('University College Hospital'),
        subtitle: const Text('Ibadan, Oyo, Nigeria'),
        trailing: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HospitalInfoPage()));
            },
            child: SvgPicture.asset('assets/view_more.svg')),
      ),
    );
  }
}
