// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_element
// ignore_for_file: file_names

import 'package:flutter/material.dart';

const _maincolor = Color(0xff62BEC1);
const _hintextcolor = Color(0xffE5E5E5);
const _normalcolor = Color(0xff646464);
const _inputcolor = Color(0xff000000);

class Kotabesar {
  String city;

  String data;
  String logo;

  Kotabesar({required this.city, required this.data, required this.logo});
}

int indexkota = 0;
List<Kotabesar> kota = [
  Kotabesar(
      city: 'Jakarta, Indonesia',
      data: '261+ stays',
      logo: 'images/jakarta.png'),
  Kotabesar(
      city: 'Yogyakarta, Indonesia',
      data: '300+ stays',
      logo: 'images/yogyakarta.png'),
  Kotabesar(
      city: 'Bandung, Indonesia',
      data: '420+ stays',
      logo: 'images/bandung.png'),
  Kotabesar(
      city: 'Denpasar, Indonesia',
      data: '120+ stays',
      logo: 'images/denpasar.png'),
  Kotabesar(
      city: 'Surabaya, Indonesia',
      data: '500+ stays',
      logo: 'images/surabaya.png'),
  Kotabesar(
      city: 'Semarang, Indonesia',
      data: '160+ stays',
      logo: 'images/semarang.png'),
  Kotabesar(
      city: 'Medan, Indonesia', data: '200+ stays', logo: 'images/medan.png'),
  Kotabesar(
      city: 'Malang, Indonesia', data: '311+ stays', logo: 'images/malang.png'),
];

class Kecamatan {
  String region;

  Kecamatan({required this.region});
}

int indexregion = 0;
List<Kecamatan> kecamatan = [
  Kecamatan(region: 'Tegalsari'),
  Kecamatan(region: 'Simokerto'),
  Kecamatan(region: 'Genteng'),
  Kecamatan(region: 'Bubutan'),
  Kecamatan(region: 'Gubeng'),
  Kecamatan(region: 'Gunung Anyar'),
  Kecamatan(region: 'Sukolilo'),
  Kecamatan(region: 'Tambaksari'),
  Kecamatan(region: 'Mulyorejo'),
  Kecamatan(region: 'Rungkut'),
  Kecamatan(region: 'Tenggilis Mejoyo'),
  Kecamatan(region: 'Benowo'),
  Kecamatan(region: 'Pakal'),
  Kecamatan(region: 'Asemrowo'),
  Kecamatan(region: 'Sukomanunggal'),
  Kecamatan(region: 'Tandes'),
  Kecamatan(region: 'Sambikerep'),
  Kecamatan(region: 'Lakarsantri'),
];

class Content {
  String loc;
  String name;
  String price;
  String disc;
  String rate;
  String count;
  String gender;
  String profile;
  Color color;

  Content({
    required this.color,
    required this.loc,
    required this.name,
    required this.price,
    required this.disc,
    required this.rate,
    required this.count,
    required this.gender,
    required this.profile,
  });
}

List<Content> content = [
  Content(
      loc: 'Ketintang, Surabaya',
      name: 'Kos Pak Jalu Ketintang Madya',
      price: 'Rp 700.000/month',
      disc: 'Rp 800.000',
      rate: '4,8',
      count: '160',
      gender: 'Putra',
      profile: 'images/indekos1.png',
      color: const Color(0xff62BEC1)),
  Content(
      loc: 'Gubeng, Surabaya',
      name: 'Kos bu Farah Unair kampus B',
      price: 'Rp700.000/month',
      disc: 'Rp800.000',
      rate: '4.8',
      count: '160',
      gender: 'Putra',
      profile: 'images/indekos2.png',
      color: const Color(0xff62BEC1)),
  Content(
      loc: 'Gubeng, Kota Surabaya',
      name: 'Kos bu Fatmah Unair kampus C',
      price: 'Rp700.000/month',
      disc: 'Rp800.000',
      rate: '4.8',
      count: '160',
      gender: 'Putri',
      profile: 'images/indekos3.png',
      color: const Color(0xffFF6B74)),
  Content(
      loc: 'Lakarsantri, Kota Surabaya',
      name: 'Kos bu Liana ',
      price: 'Rp700.000/month',
      disc: 'Rp800.000',
      rate: '4.8',
      count: '160',
      gender: 'Putri',
      profile: 'images/indekos4.png',
      color: const Color(0xffFF6B74)),
  Content(
      loc: 'ketintang, Kota Surabaya',
      name: 'Kos Pak Supri Ketintang Madya',
      price: 'Rp700.000/month',
      disc: 'Rp800.000',
      rate: '4.8',
      count: '160',
      gender: 'Campur',
      profile: 'images/indekos5.png',
      color: const Color(0xffDB9A00))
];

class Facilities {
  String cnama;
  String csub;
  String cdis;
  String casset;

  Facilities(
      {required this.cnama,
      required this.csub,
      required this.cdis,
      required this.casset});
}

List<Facilities> facilities = [
  Facilities(
      cnama: 'Royal Plaza',
      csub: 'Mall',
      cdis: '633 m',
      casset: 'images/shop.png'),
  Facilities(
      cnama: 'Universitas Negeri Surabaya',
      csub: 'Universitas',
      cdis: '1.7 km',
      casset: 'images/school.png'),
  Facilities(
      cnama: 'ATM BCA',
      csub: 'Public Service',
      cdis: '1.7 km',
      casset: 'images/wallet.png'),
  Facilities(
      cnama: 'Telkom Plaza',
      csub: 'Public Service',
      cdis: '2.7 km',
      casset: 'images/plaza.png')
];

class Kamar {
  String ckamar;
  int ikamar;
  Kamar({required this.ckamar, required this.ikamar});
}

List<Kamar> kamar = [
  Kamar(ckamar: 'images/ckamar1.png', ikamar: 0),
  Kamar(ckamar: 'images/ckamar2.png', ikamar: 1),
  Kamar(ckamar: 'images/ckamar3.png', ikamar: 2),
  Kamar(ckamar: 'images/ckamar4.png', ikamar: 3),
  Kamar(ckamar: 'images/ckamar5.png', ikamar: 4),
];

class Fac {
  String fac1;
  String afac;
  Fac({
    required this.fac1,
    required this.afac,
  });
}

List<Fac> fac = [
  Fac(fac1: 'Single bed', afac: 'assets/icons/fac1.svg'),
  Fac(fac1: '1 Fan', afac: 'assets/icons/fac2.svg'),
  Fac(fac1: '1 Cupboard', afac: 'assets/icons/fac3.svg'),
  Fac(fac1: '1 Desk', afac: 'assets/icons/fac4.svg'),
];

class Avail {
  String aname;

  String aprice;
  String adisc;
  String apic;
  bool available;
  Avail({
    required this.aname,
    required this.aprice,
    required this.adisc,
    required this.apic,
    required this.available,
  });
}

List<Avail> room = [
  Avail(
      aname: 'Room 1',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room1.png',
      available: true),
  Avail(
      aname: 'Room 2',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room2.png',
      available: true),
  Avail(
      aname: 'Room 3',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room3.png',
      available: false),
  Avail(
      aname: 'Room 4',
      aprice: 'Rp 700.000/month',
      adisc: 'Rp 800.000',
      apic: 'assets/images/room4.png',
      available: false),
];

class Formulir {
  String fname;
  String fdevice;
  String ftype;
  bool fformat;
  Formulir({
    required this.fname,
    required this.fdevice,
    required this.ftype,
    required this.fformat,
  });
}

List<Formulir> _form = [
  Formulir(
      fname: 'ID Card', ftype: 'Open', fformat: false, fdevice: 'Open Camera'),
  Formulir(
      fname: 'Selfie with ID',
      ftype: 'Open',
      fformat: false,
      fdevice: 'Open Camera'),
  Formulir(
      fname: 'Family Card',
      ftype: 'Browse',
      fformat: true,
      fdevice: 'Upload Files'),
  Formulir(
      fname: 'Marriage Book',
      ftype: 'Browse',
      fformat: true,
      fdevice: 'Upload Files'),
];

class Pd {
  String plabel;
  int ip;

  bool need;

  Pd({
    required this.plabel,
    required this.ip,
    required this.need,
  });
}

List<Pd> pd = [
  Pd(plabel: 'Full Name', need: false, ip: 0),
  Pd(plabel: 'Phone Number', need: false, ip: 1),
  Pd(plabel: 'Gender', need: true, ip: 2),
  Pd(plabel: 'Date of Birth', need: true, ip: 3),
  Pd(plabel: 'City', need: false, ip: 4),
  Pd(plabel: 'State/Province', need: false, ip: 5),
  Pd(plabel: 'Marital Status', need: true, ip: 6),
];
final Map<int, String> customIcons = {
  2: 'assets/icons/downarrowhead.svg', // Index 2: Gender
  3: 'assets/icons/calendar.svg', // Index 3: Date of Birth
  6: 'assets/icons/downarrowhead.svg', // Index 6: Marital Status
};

class Pdt {
  String pdn;
  Pdt({
    required this.pdn,
  });
}

List<Pdt> pdt = [
  Pdt(pdn: 'Edit KTP/SIM/Passport Photo'),
  Pdt(pdn: 'Selfie Photo'),
];

class Gender {
  String? pdgender;
  Gender({this.pdgender});
}

List<Gender?> gender = [Gender(pdgender: 'Male'), Gender(pdgender: 'Female')];

class Marital {
  String? pdmarital;
  Marital({this.pdmarital});
}

List<Marital?> marital = [
  Marital(pdmarital: 'Married'),
  Marital(pdmarital: 'Single'),
  Marital(pdmarital: 'Divorced'),
];
