import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medlink/components/custom_button.dart';
import 'package:medlink/components/hospital_info.dart';
import 'package:medlink/pages/home_screen.dart';
import 'package:medlink/config/get_hospitals.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/hospital_img.jpg'),
                            fit: BoxFit.cover)),
                    alignment: Alignment.center,
                    child: Container(
                      width: 300,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.7),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.hospitalData.hospitalName,
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${widget.hospitalData.city} ${widget.hospitalData.region}, ${widget.hospitalData.country}',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(fontSize: 20),
                            ),
                          ]),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: InkWell(
                      onTap: () {
                         Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                      },
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration:const BoxDecoration(
                          shape: BoxShape.circle,
                          color:  Color(0xff353535),
                        ),
                        child:const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
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
                  children: [
                    OverviewPage(
                      hospitalData: widget.hospitalData,
                    ),
                    ServicesPage(
                      servicesOffered:
                          widget.hospitalData.servicesOffered.split(','),
                    ),
                    FacilitiesPage(
                      facilities:
                          widget.hospitalData.otherFacilities.split(','),
                    )
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
              onPressed: () async {
                final Uri url = Uri.parse(widget.hospitalData.websiteUrl);
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  shadowColor: Theme.of(context).primaryColor,
                  fixedSize: const Size(171, 46)),
              child: const Text('Visit Website')),
          ElevatedButton(
              onPressed: () async {
                final call = Uri.parse('tel:${widget.hospitalData.hotline}');
                if (await canLaunchUrl(call)) {
                  launchUrl(call);
                } else {
                  throw 'Could not launch $call';
                }
              },
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
