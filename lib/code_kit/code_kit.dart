library code_kit;

import 'package:dio/dio.dart' as dio;
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/features/autentithication/autentithication_part.dart';
import 'package:gallery_app/generated/l10n.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:retrofit/retrofit.dart';

part 'resources/app_enums.dart';
part 'resources/network_info.dart';
part 'error/exception.dart';
part 'error/failure.dart';

part 'dependency_injection/dependency_injection.dart';

part 'data_provider/refresh_interceptor.dart';
part 'data_provider/refresh_api.dart';
part 'data_provider/refresh_api_g.dart';
part 'data_provider/current_user_api.dart';
part 'data_provider/current_user_api_g.dart';

part 'repository/token_secure_storage.dart';
part 'repository/token_secure_storage_impl.dart';
part 'repository/user_repository.dart';
part 'repository/user_repository_impl.dart';

part 'helpers/validation_helper.dart';

part 'consts/string_consts.dart';

part 'extensions/content_extensions.dart';

part 'models/dto/refresh_dto.dart';
part 'models/dto/refresh_dto_freezed.dart';
part 'models/dto/refresh_dto_g.dart';
part 'models/dto/user_dto.dart';
part 'models/dto/user_dto_g.dart';
part 'models/dto/user_dto_freezed.dart';

part 'models/user_model.dart';

// part 'repository/current_user_repository.dart';
