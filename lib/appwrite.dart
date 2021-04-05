library appwrite;

import 'dart:io';
import 'dart:convert';
import 'package:universal_html/html.dart' as html;
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:dio/adapter.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:package_info_plus/package_info_plus.dart';


export 'package:dio/dio.dart' show Response, MultipartFile;

part 'client.dart';
part 'enums.dart';
part 'service.dart';
part 'exception.dart';
part 'services/account.dart';
part 'services/avatars.dart';
part 'services/database.dart';
part 'services/functions.dart';
part 'services/health.dart';
part 'services/locale.dart';
part 'services/projects.dart';
part 'services/storage.dart';
part 'services/teams.dart';
part 'services/users.dart';
