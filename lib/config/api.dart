import 'dart:html';

class Api {
  static const _baseUrl = "http://192.168.1.12/api_discuss_app"; 
  static const comment = "$_baseUrl/comment";
  static const follow = "$_baseUrl/follow";
  static const topic = "$_baseUrl/topic";
  static const user = "$_baseUrl/user";

  // api get image
  static const imageComment = "$_baseUrl/images/comment";
  static const imageTopic = "$_baseUrl/images/topic";
  static const imageUser = "$_baseUrl/images/user";
}