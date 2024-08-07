part of '../autentithication_part.dart';

class TokenModel {
  TokenModel({
    required this.access_token,
    required this.refresh_token,
  });

  final String access_token;
  final String refresh_token;
}
