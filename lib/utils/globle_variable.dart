import 'package:finegram/screens/add_post_screen.dart';
import 'package:finegram/screens/feed_screen.dart';
import 'package:finegram/screens/notification_screen.dart';
import 'package:finegram/screens/profile_screen.dart';
import 'package:finegram/screens/search_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const WebScreenSize = 600;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreenn(),
  const AddPostScreen(),
  const NotificationPage(),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
