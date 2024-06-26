import 'package:chatapp/Ui/Screens/chat_page.dart';
import 'package:chatapp/Ui/Screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'Ui/Screens/register_page.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LoginPage.id:(context) =>  const LoginPage(),
        RegisterPage.id:(context) => const RegisterPage(),
        ChatPage.id:(context) => const ChatPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}