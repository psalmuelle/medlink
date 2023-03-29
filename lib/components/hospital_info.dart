import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/config/get_hospitals.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key, required this.hospitalData});

  final HospitalData hospitalData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Table(
            columnWidths: const {
              0: FractionColumnWidth(0.4),
              1: FractionColumnWidth(0.6)
            },
            children: [
              TableRow(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Address:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    hospitalData.address,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Email:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    hospitalData.email,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Operating Hours:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    hospitalData.operatingHours,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Ownership:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    hospitalData.ownership,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Facility Type:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    hospitalData.facilityType,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Facility Level:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    hospitalData.facilityLevel,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ),
              ]),
              TableRow(children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    'Bed Spaces:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    hospitalData.bedSpaces.toString(),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ),
                ),
              ]),
            ],
          )),
    );
  }
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key, required this.servicesOffered});

  final List servicesOffered;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: MediaQuery.of(context).size.height - 440.0,
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: ListView.builder(
          itemCount: servicesOffered.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/check.svg',
                    semanticsLabel: 'checkbox',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Text(
                    servicesOffered[index],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
            );
          }),
    ));
  }
}

class FacilitiesPage extends StatelessWidget {
  const FacilitiesPage({super.key, required this.facilities});

  final List facilities;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      height: MediaQuery.of(context).size.height - 440.0,
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: ListView.builder(
          itemCount: facilities.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/check.svg',
                    semanticsLabel: 'checkbox',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Text(
                    facilities[index],
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
            );
          }),
    ));
  }
}
