import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/components/homepage_section_two.dart';
import 'package:medlink/components/hospital_tile.dart';
import 'package:medlink/config/get_hospitals.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  List<HospitalData>? hospitalData;

  bool isDataLoaded = false;

  Future<List<HospitalData>?> getDataFromAPI() async {
    var client = http.Client();
    Uri url =
        Uri.parse('https://daniel2345.pythonanywhere.com/api/hospital/all/');
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = response.body;
      return hospitalDataFromJson(json);
    }
  }

  getData() async {
    hospitalData = await getDataFromAPI();
    if (hospitalData != null) {
      setState(() {
        isDataLoaded = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  void dispose() {
    super.dispose();
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
                Column(
                  children: [
                    Text(
                      'Welcome!',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      'Erinle Samuel',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SvgPicture.asset(
                  'assets/Group 903.svg',
                  semanticsLabel: 'Profile',
                  width: 60,
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          //Search Text Field
          //Use the text search you downloaded form pubdev
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  hintText: 'Search by name',
                  suffixIcon: const Icon(Icons.search),
                  suffixIconColor: const Color(0xff353535),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade400, width: 1.5)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade500, width: 1.5)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          // Section TWO Below Search Textfield

          SizedBox(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SectionTwoContainer(),
                SectionTwoContainer(),
                SectionTwoContainer(),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Available Hospitals',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('See More ->',
                        style: Theme.of(context).textTheme.bodyMedium))
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Visibility(
            visible: isDataLoaded,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: hospitalData?.length,
                itemBuilder: (context, index) {
                  return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: HospitalTile(
                        hospitalName: hospitalData![index].hospitalName,
                        location:
                            '${hospitalData![index].city} ${hospitalData![index].region}, ${hospitalData![index].country}',
                        hospitalIndex: hospitalData![index],
                      ));
                },
              ),
            ),
          )
        ]),
      )),
    );
  }
}
