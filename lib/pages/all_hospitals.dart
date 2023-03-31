import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:medlink/auth.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/components/hospital_tile.dart';
import 'package:medlink/config/get_hospitals.dart';
import 'package:medlink/pages/home_screen.dart';

class AllHospitalPage extends StatelessWidget {
  AllHospitalPage({super.key, required this.hospitalData});

  final User? user = Auth().currentUser;

  final List<HospitalData>? hospitalData;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          // First section
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff091939),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) => [
                    PopupMenuItem(
                      onTap: signOut,
                      child: const Text('Logout'),
                    )
                  ],
                  child: SvgPicture.asset(
                    'assets/Group 903.svg',
                    semanticsLabel: 'Profile',
                    width: 50,
                  ),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          SizedBox(
            height: MediaQuery.of(context).size.height - 125,
            child: ListView.builder(
              itemCount: hospitalData?.length,
              itemBuilder: (context, index) {
                return Container(
                    constraints: const BoxConstraints(maxWidth: 350),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: HospitalTile(
                      hospitalName: hospitalData![index].hospitalName,
                      location:
                          '${hospitalData![index].city} ${hospitalData![index].region}, ${hospitalData![index].country}',
                      hospitalIndex: hospitalData![index],
                    ));
              },
            ),
          ),
        ]),
      )),
    );
  }
}
