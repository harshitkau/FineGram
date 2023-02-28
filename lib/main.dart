import 'package:finegram/chat_app.dart';
import 'package:finegram/providers/user_provider.dart';
import 'package:finegram/responsive/mobile_screen_layout.dart';
import 'package:finegram/responsive/responsive_layout.dart';
import 'package:finegram/responsive/web_screen_layout.dart';
import 'package:finegram/screens/login_screen.dart';
import 'package:finegram/screens/signup_screen.dart';
import 'package:finegram/utils/color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

void main() async {
  final client = StreamChatClient(streamKey);
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAM8Y7RK2h7XNXp83LvxNJsv0JTzk_ZrTE',
        appId: '1:667812591142:web:77056c93e42e95d0a398e7',
        messagingSenderId: '667812591142',
        projectId: 'fim-df4b5',
        storageBucket: 'fim-df4b5.appspot.com',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp(
    client: client,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client});

  final StreamChatClient client;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Finegram',
        builder: (context, child) {
          return StreamChatCore(
            client: client,
            child: child!,
          );
        },
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasData) {
                  return const ResponsiveLayout(
                    mobileScreenLayout: MobileScreenLayout(),
                    webScreenLayout: WebScreenLayout(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      '${snapshot.error}',
                    ),
                  );
                }
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: primaryColor,
                  ),
                );
              }
              return const LoginScreen();
            }),
      ),
    );
  }
}
