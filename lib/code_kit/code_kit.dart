library code_kit;

import 'package:dio/dio.dart' as dio;
import 'package:equatable/equatable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gallery_app/autentithication/autentithication_part.dart';
import 'package:gallery_app/autentithication/data_provider/api_autentithication.dart';
import 'package:gallery_app/autentithication/models/dto/refresh_model.dart';
import 'package:gallery_app/autentithication/models/dto/token_model.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

part 'resources/app_enums.dart';
part 'resources/network_info.dart';
part 'error/exception.dart';
part 'error/failure.dart';

part 'dependency_injection/dependency_injection.dart';

part 'data_provider/refresh_interceptor.dart';
// part 'data_provider/current_user_api.dart';
// part 'data_provider/current_user_api_g.dart';

// part 'models/user_model.dart';
// part 'models/user_model.g.dart';

// part 'repository/current_user_repository.dart';
