import 'config.dart';
export 'package:get_storage/get_storage.dart';

export 'package:shimmer/shimmer.dart';
export 'package:get/get.dart';
export 'package:flutter/material.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'utilities/index.dart';
export 'common/theme/index.dart';
export '../../common/config.dart';
export 'common/theme/index.dart';
export 'package:carousel_slider/carousel_slider.dart';
export 'common/language/index.dart';
export '../../routes/index.dart';
export '../controllers/app_controller.dart';
export 'routes/common_screen_list.dart';
export 'extensions/spacing.dart';
export 'extensions/text_extension.dart';
export 'extensions/text_span_extension.dart';
export 'extensions/textstyle_extensions.dart';
export 'extensions/widget_extension.dart';
export 'package:cached_network_image/cached_network_image.dart';
export 'package:multi_kit/app/pages/auth_pages/login_chk.dart';

export 'common_widgets/directionality_rtl.dart';

export '../app/index.dart';
export '../app/common/assets/image_assets.dart';

export 'package:firebase_core/firebase_core.dart';


final appCtrl = Get.isRegistered<AppController>()
    ? Get.find<AppController>()
    : Get.put(AppController());
