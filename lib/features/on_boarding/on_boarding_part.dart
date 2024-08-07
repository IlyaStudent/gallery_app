library on_boarding_part;

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';

part 'bloc/on_borading_cubit/on_boarding_cubit.dart';
part 'bloc/on_borading_cubit/on_boarding_cubit_freezed.dart';
part 'bloc/on_borading_cubit/on_boarding_state.dart';

part 'screens/login_or_register_page.dart';
part 'screens/on_boarding_page.dart';

part 'widgets/no_connection_widget.dart';
