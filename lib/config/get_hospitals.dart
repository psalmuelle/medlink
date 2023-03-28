// To parse this JSON data, do
//
//     final hospitalData = hospitalDataFromJson(jsonString);

import 'dart:convert';

List<HospitalData> hospitalDataFromJson(String str) => List<HospitalData>.from(json.decode(str).map((x) => HospitalData.fromJson(x)));

String hospitalDataToJson(List<HospitalData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HospitalData {
    HospitalData({
        required this.id,
        required this.user,
        required this.hospitalName,
        required this.country,
        required this.region,
        required this.city,
        required this.address,
        required this.websiteUrl,
        required this.email,
        required this.hotline,
        required this.operatingHours,
        required this.ownership,
        required this.facilityLevel,
        required this.facilityType,
        required this.servicesOffered,
        required this.bedSpaces,
        required this.otherFacilities,
    });

    final int id;
    final int user;
    final String hospitalName;
    final String country;
    final String region;
    final String city;
    final String address;
    final String websiteUrl;
    final String email;
    final String hotline;
    final String operatingHours;
    final String ownership;
    final String facilityLevel;
    final String facilityType;
    final String servicesOffered;
    final int bedSpaces;
    final String otherFacilities;

    factory HospitalData.fromJson(Map<String, dynamic> json) => HospitalData(
        id: json["id"],
        user: json["user"],
        hospitalName: json["hospital_name"],
        country: json["country"],
        region: json["region"],
        city: json["city"],
        address: json["address"],
        websiteUrl: json["website_url"],
        email: json["email"],
        hotline: json["hotline"],
        operatingHours: json["operating_hours"],
        ownership: json["ownership"],
        facilityLevel: json["facility_level"],
        facilityType: json["facility_type"],
        servicesOffered: json["services_offered"],
        bedSpaces: json["bed_spaces"],
        otherFacilities: json["other_facilities"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "hospital_name": hospitalName,
        "country": country,
        "region": region,
        "city": city,
        "address": address,
        "website_url": websiteUrl,
        "email": email,
        "hotline": hotline,
        "operating_hours": operatingHours,
        "ownership": ownership,
        "facility_level": facilityLevel,
        "facility_type": facilityType,
        "services_offered": servicesOffered,
        "bed_spaces": bedSpaces,
        "other_facilities": otherFacilities,
    };
}
