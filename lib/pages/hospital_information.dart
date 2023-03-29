import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/components/custom_button.dart';
import 'package:medlink/components/hospital_info.dart';
import 'package:medlink/pages/home_screen.dart';
import 'package:medlink/config/get_hospitals.dart';

class HospitalInfoPage extends StatefulWidget {
  const HospitalInfoPage({super.key, required this.hospitalData});

  final HospitalData hospitalData;
  @override
  State<HospitalInfoPage> createState() => _HospitalInfoState();
}

class _HospitalInfoState extends State<HospitalInfoPage> {
  final infoController = PageController();
  double? currentPage = 0;
  @override
  void initState() {
    super.initState();
    infoController.addListener(() {
      if (infoController.page?.round() != currentPage) {
        setState(() {
          currentPage = infoController.page;
        });
      }
    });
  }

  @override
  void dispose() {
    infoController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Theme.of(context).primaryColor,
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: SvgPicture.asset(
                              fit: BoxFit.scaleDown,
                              'assets/hospital_logo1.svg',
                              semanticsLabel: 'Hospital logo',
                              colorFilter: ColorFilter.mode(
                                  Theme.of(context).primaryColor,
                                  BlendMode.srcIn),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            widget.hospitalData.hospitalName,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                             '${widget.hospitalData.city} ${widget.hospitalData.region}, ${widget.hospitalData.country}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: Colors.white, fontSize: 20),
                          ),
                        ]),
                  ),
                  Positioned(
                      top: 0,
                      left: 1,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        icon: const Icon(Icons.arrow_back),
                        iconSize: 32,
                        color: Colors.white,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      text: 'Overview',
                      onPressed: () {
                        infoController.jumpToPage(0);
                      },
                      isActive: currentPage == 0,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomButton(
                      text: 'Services',
                      onPressed: () {
                        infoController.jumpToPage(1);
                      },
                      isActive: currentPage == 1,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    CustomButton(
                      text: 'Facilities',
                      onPressed: () {
                        infoController.jumpToPage(2);
                      },
                      isActive: currentPage == 2,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //Page View For The Three pages

              SizedBox(
                height: MediaQuery.of(context).size.height - 440.0,
                child: PageView(
                  controller: infoController,
                  children:  [
                    OverviewPage(hospitalData: widget.hospitalData,),
                    ServicesPage(servicesOffered:  widget.hospitalData.servicesOffered.split(','),),
                    FacilitiesPage(facilities: widget.hospitalData.otherFacilities.split(','),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 55,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shadowColor: Theme.of(context).primaryColor,
                  fixedSize: const Size(171, 46)),
              child: const Text('Visit Website')),
          ElevatedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                shadowColor: Theme.of(context).primaryColor,
                fixedSize: const Size(171, 46),
              ),
              child: const Text('Call Now')),
        ]),
      ),
    );
  }
}
