import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/features/on_boarding/on_boarding_part.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

part 'screens/home_page.dart';
part 'screens/photo_data_page.dart';

part 'widgets/photos_widget.dart';
part 'widgets/photo_widget.dart';
part 'widgets/photo_data_widget.dart';

part 'bloc/photos_bloc/photos_bloc.dart';
part 'bloc/photos_bloc/photos_bloc_freezed.dart';
part 'bloc/photos_bloc/photos_event.dart';
part 'bloc/photos_bloc/photos_state.dart';
part 'bloc/photo_cubit/photo_cubit.dart';
part 'bloc/photo_cubit/photo_cubit_freezed.dart';
part 'bloc/photo_cubit/photo_state.dart';
part 'bloc/photo_data_cubit/photo_data_cubit.dart';
part 'bloc/photo_data_cubit/photo_data_state.dart';
part 'bloc/photo_data_cubit/photo_data_cubit_freezed.dart';
