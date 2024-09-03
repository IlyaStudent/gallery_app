import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/features/home/home_part.dart';
import 'package:gallery_app/features/on_boarding/on_boarding_part.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';
import 'package:intl/intl.dart';

part 'bloc/user_data_cubit/user_data_cubit.dart';
part 'bloc/user_data_cubit/user_data_state.dart';
part 'bloc/user_data_cubit/user_data_cubit_freezed.dart';

part 'screens/profile_screen.dart';

part 'widgets/profile_widget.dart';
part 'widgets/user_data_widget.dart';
