import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/features/autentithication/autentithication_part.dart';
import 'package:gallery_app/features/on_boarding/on_boarding_part.dart';
import 'package:gallery_app/features/photos/photos_part.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';
import 'package:intl/intl.dart';

part 'screens/settings_screen.dart';

part 'widgets/photo_widget.dart';
part 'widgets/user_data_form_widget.dart';
part 'widgets/settings_action_widget.dart';

part 'bloc/user_data_cubit/user_data_cubit.dart';
part 'bloc/user_data_cubit/user_data_cubit_freezed.dart';
part 'bloc/user_data_cubit/user_data_state.dart';
part 'bloc/account_settings/account_settings_bloc.dart';
part 'bloc/account_settings/account_settings_bloc_freezed.dart';
part 'bloc/account_settings/account_settings_event.dart';
part 'bloc/account_settings/account_settings_state.dart';

part 'models/account_settings_error_model.dart';

part 'models/dto/account_settings_error_dto.dart';
part 'models/dto/account_settings_error_dto_g.dart';
part 'models/dto/account_settings_error_dto_freezed.dart';
