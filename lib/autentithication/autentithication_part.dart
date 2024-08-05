library autentithication_part;

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart' as dio;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';

part 'widgets/page_title_widget.dart';

part 'screens/on_boarding_page.dart';
part 'screens/register_page.dart';
part 'screens/auth_page.dart';

part 'data_provider/autentithication_interceptor.dart';
part 'data_provider/api_autentithication.dart';
part 'data_provider/api_autentithication_g.dart';

part 'widgets/custom_password_field.dart';
part 'widgets/custom_date_field.dart';

part 'repository/authentithication_repository.dart';
part 'repository/authentithication_repository_impl.dart';

part 'bloc/registration_bloc/registration_bloc.dart';
part 'bloc/registration_bloc/registration_event.dart';
part 'bloc/registration_bloc/registration_state.dart';
part 'bloc/registration_bloc/registration_bloc_freezed.dart';

part 'bloc/authorization_bloc/authorization_bloc.dart';
part 'bloc/authorization_bloc/authorization_event.dart';
part 'bloc/authorization_bloc/authorization_state.dart';
part 'bloc/authorization_bloc/authorization_bloc_freezed.dart';

part 'models/dto/error_dto.dart';
part 'models/dto/error_dto_g.dart';
part 'models/dto/error_dto_freezed.dart';
part 'models/dto/login_dto.dart';
part 'models/dto/login_dto_g.dart';
part 'models/dto/login_dto_freezed.dart';
part 'models/dto/reg_dto.dart';
part 'models/dto/reg_dto_g.dart';
part 'models/dto/reg_dto_freezed.dart';
part 'models/dto/reg_error_dto.dart';
part 'models/dto/reg_error_dto_g.dart';
part 'models/dto/reg_error_dto_freezed.dart';
part 'models/dto/token_dto.dart';
part 'models/dto/token_dto_g.dart';
part 'models/dto/token_dto_freezed.dart';
