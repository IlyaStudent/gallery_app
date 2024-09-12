import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/features/autentithication/autentithication_part.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';

part 'screens/password_reset_screen.dart';
part 'screens/success_screen.dart';

part 'models/password_reset_error_model.dart';
part 'models/password_reset_model.dart';

part 'models/dto/password_reset_error_dto.dart';
part 'models/dto/password_reset_error_dto_g.dart';
part 'models/dto/password_reset_error_dto_freezed.dart';
part 'models/dto/password_reset_dto.dart';
part 'models/dto/password_reset_dto_g.dart';
part 'models/dto/password_reset_dto_freezed.dart';

part 'bloc/password_reset_bloc/password_reset_bloc.dart';
part 'bloc/password_reset_bloc/password_reset_bloc_freezed.dart';
part 'bloc/password_reset_bloc/password_reset_event.dart';
part 'bloc/password_reset_bloc/password_reset_state.dart';
