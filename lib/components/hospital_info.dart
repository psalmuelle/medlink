import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Text(
                    'Rochester University, Arkansas, United State of America',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Text(
                    'Rochester University, Arkansas, United State of America',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Text(
                    'Rochester University, Arkansas, United State of America',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address:',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: Text(
                    'Rochester University, Arkansas, United State of America',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(),
                  ))
                ],
              ),
            ],
          )),
    );
  }
}

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
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
                    'Emergency Department',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
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
                    'Emergency Department',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
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
                    'Emergency Department',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
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
                    'Emergency Department',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}

class FacilitiesPage extends StatelessWidget {
  const FacilitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
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
                    'Emergency Department',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
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
                    'Emergency Department',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
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
                    'Emergency Department',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
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
                    'Opthalmology',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
