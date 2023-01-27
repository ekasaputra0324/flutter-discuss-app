
import 'package:discuss_app/config/session.dart';
import 'package:discuss_app/model/user.dart';
import 'package:discuss_app/page/home_page.dart';
import 'package:discuss_app/page/login_app.dart';
import 'package:discuss_app/page/register_page.dart';
// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../page/error_page.dart';

class  AppRoute  {
  static const home = '/';
  static const login = '/login';
  static const register = '/register';

  static GoRouter routerConfig = GoRouter(
  
    errorBuilder: (context, state) =>  ErrorPgae(String, 
    title: 'Shometing error!', 
    description: state.error.toString()
    ),
    debugLogDiagnostics: true,

    redirect: (context, state) async {
      User? user = await Session.getUser();
      if (user == null) {
        if(state.location == login || state.location == register){
          return null;
        }
        return login;
      }
      return null;
    },
  
    routes: [
      GoRoute(
        path:home, 
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path:login,
        builder: (context, state) =>  const LoginPage(),
        ),
        GoRoute(path: register,
        builder: (context, state) => const RegisterPage(),
        ) 
    ]
  );
  
}