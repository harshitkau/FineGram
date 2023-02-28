import 'package:flutter/material.dart';

const users = [
  userGordon,
  userSalvatore,
  userSacha,
  userDeven,
  userSahil,
  userReuben,
  userNash,
];

const userGordon = DemoUser(
  id: 'gordon',
  name: 'Gordon Hayes',
  image:
      'https://media.istockphoto.com/id/1309328823/photo/headshot-portrait-of-smiling-male-employee-in-office.jpg?b=1&s=170667a&w=0&k=20&c=MRMqc79PuLmQfxJ99fTfGqHL07EDHqHLWg0Tb4rPXQc=',
);

const userSalvatore = DemoUser(
  id: 'salvatore',
  name: 'Salvatore Giordano',
  image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA0VunIhtPxnwK-Yaoz8lGFWCheNb8b0IAaGDNrpfAqHm-8JuqJhW4p3EkLSjrafMfjQY&usqp=CAU',
);

const userSacha = DemoUser(
  id: 'sacha',
  name: 'Sacha Arbonel',
  image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdSqtmPphAMTyDUeJ_--lCllzxmRbEE7d2Gt2lXB1WAwnSEDIGbD0dJ3u-2rELtIYX2jA&usqp=CAU',
);

const userDeven = DemoUser(
  id: 'deven',
  name: 'Deven Joshi',
  image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjX3SOTIfrK1Kt1czaejkmTg6i93_WjzivjdnJPNLO2dttISoDQ3KrFEzrOhCTelV00mY&usqp=CAU',
);

const userSahil = DemoUser(
  id: 'sahil',
  name: 'Sahil Kumar',
  image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPslOTES1B7lObNSEe2EJiGbqyreY69pri5vRyTnQNyUyy12B_6yiUQRLAnlBim5x5LwU&usqp=CAU',
);

const userReuben = DemoUser(
  id: 'reuben',
  name: 'Reuben Turner',
  image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhrlH9QlMjus9pQY0IPfd97FE7RdNVga3MY-lMqsaltgspxx3q_-Bg6wcOJDYGnPy1gIU&usqp=CAU',
);

const userNash = DemoUser(
  id: 'nash',
  name: 'Nash Ramdial',
  image:
      'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
);

@immutable
class DemoUser {
  final String id;
  final String name;
  final String image;

  const DemoUser({
    required this.id,
    required this.name,
    required this.image,
  });
}
