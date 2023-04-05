

import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:http/http.dart';
import '../config/api.dart';

class FollowSource {
  static Future<bool> checkIsFollowing(
    String fromIdUser ,
    String toIdUser
    ) async{
    String url = '${Api.follow}/check.php';
    try {
      Response response = await Client().post(Uri.parse(url), body: {
        'from_id_user': fromIdUser,
        'to_id_user': toIdUser,
      });
      DMethod.printTitle('User Source - CheckIsFollowing', response.body);
      Map responseBody = jsonDecode(response.body);
      return responseBody['success'];
    } catch (e) {
        DMethod.printTitle('User Source - CheckIsFollowing', e.toString());
        return false;
    }
  }


  static Future<bool> following(String fromIdUser,String toIdUser) async{
    String url = '${Api.follow}/following.php';
    try {
      Response response = await Client().post(Uri.parse(url), body: {
        'from_id_user': fromIdUser,
        'to_id_user': toIdUser,
      });
      DMethod.printTitle('User Source - Following', response.body);
      Map responseBody = jsonDecode(response.body);
      return responseBody['success'];
    } catch (e) {
        DMethod.printTitle('User Source - Following', e.toString());
        return false;
    }
  }

   static Future<bool> noFollowing(String fromIdUser,String toIdUser) async{
    String url = '${Api.follow}/no_following.php';
    try {
      Response response = await Client().post(Uri.parse(url), body: {
        'from_id_user': fromIdUser,
        'to_id_user': toIdUser,
      });
      DMethod.printTitle('User Source - noFollowing', response.body);
      Map responseBody = jsonDecode(response.body);
      return responseBody['success'];
    } catch (e) {
        DMethod.printTitle('User Source - noFollowing', e.toString());
        return false;
    }
  }


}