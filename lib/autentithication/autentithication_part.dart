library autentithication_part;

import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' as dartz;
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gallery_app/autentithication/data_provider/api_autentithication.dart';
import 'package:gallery_app/autentithication/models/dto/error_model.dart';
import 'package:gallery_app/autentithication/models/dto/login_model.dart';
import 'package:gallery_app/autentithication/models/dto/refresh_model.dart';
import 'package:gallery_app/autentithication/models/dto/reg_error_model.dart';
import 'package:gallery_app/autentithication/models/dto/reg_model.dart';
import 'package:gallery_app/autentithication/models/dto/token_model.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';

part 'widgets/page_title_widget.dart';

part 'screens/on_boarding_page.dart';
part 'screens/register_page.dart';
part 'screens/auth_page.dart';

part 'widgets/custom_password_field.dart';
part 'widgets/custom_date_field.dart';

part 'repository/authentithication_repository.dart';

part 'bloc/registration_bloc/registration_bloc.dart';
part 'bloc/registration_bloc/registration_event.dart';
part 'bloc/registration_bloc/registration_state.dart';

part 'bloc/authorization_bloc/authorization_bloc.dart';
part 'bloc/authorization_bloc/authorization_event.dart';
part 'bloc/authorization_bloc/authorization_state.dart';
