import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/pages/hospital_information.dart';
import 'package:medlink/config/get_hospitals.dart';

class HospitalTile extends StatelessWidget {
   const HospitalTile(
      {
        super.key,
        required this.hospitalName,
        required this.location,
        required this.hospitalIndex
      }
    );

  final String hospitalName;
  final String location;
  final HospitalData hospitalIndex;

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
        title: Text(hospitalName),
        subtitle: Text(location),
        trailing: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HospitalInfoPage(hospitalData: hospitalIndex,)));
            },
            child: SvgPicture.asset('assets/view_more.svg')),
      ),
    );
  }
}
