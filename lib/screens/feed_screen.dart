import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finegram/screens/chat_homepage.dart';
import 'package:finegram/screens/chat_select_user_screen.dart';
import 'package:finegram/utils/color.dart';
import 'package:finegram/utils/globle_variable.dart';
import 'package:finegram/widget/post_card.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          Width > WebScreenSize ? webBackgroundColor : mobileBackgroundColor,
      appBar: Width > WebScreenSize
          ? null
          : AppBar(
              backgroundColor: mobileBackgroundColor,
              centerTitle: false,
              title: const Text(
                "FineGram",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal),
              ),
              actions: [
                IconButton(
                  // onPressed: () => Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => SelectUserScreen(),
                  //   ),
                  // ),
                  onPressed: (() {}),
                  icon: const Icon(Icons.messenger_outline),
                ),
              ],
            ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('posts').snapshots(),
          builder: (context,
              AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Width > WebScreenSize ? Width * 0.3 : 0,
                  vertical: Width > WebScreenSize ? 15 : 0,
                ),
                child: PostCard(
                  snap: snapshot.data!.docs[index].data(),
                ),
              ),
            );
          }),
    );
  }
}
