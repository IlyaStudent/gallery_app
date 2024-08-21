import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery_app/code_kit/code_kit.dart';
import 'package:gallery_app/features/autentithication/autentithication_part.dart';
import 'package:gallery_app/root/navigation/app_router.dart';
import 'package:gallery_app/ui_kit/ui_library.dart';
import 'package:image_picker/image_picker.dart';

part 'models/post_photo_error_model.dart';

part 'models/dto/post_photo_error_dto.dart';
part 'models/dto/post_photo_error_dto_g.dart';
part 'models/dto/post_photo_error_dto_freezed.dart';

part 'screens/photos_screen.dart';

part 'widgets/image_choose_widget.dart';
part 'widgets/photo_form_widget.dart';
part 'widgets/snack_bar_content.dart';

part 'bloc/photo_post_bloc/photo_post_bloc.dart';
part 'bloc/photo_post_bloc/photo_post_bloc_freezed.dart';
part 'bloc/photo_post_bloc/photo_post_event.dart';
part 'bloc/photo_post_bloc/photo_post_state.dart';
