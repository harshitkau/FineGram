// import 'package:flutter/material.dart';
// import 'package:logger/logger.dart' as log;
// import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

// const streamKey = '8av4ptc57ynh';
// var logger = log.Logger();

// extension streamChatContext on BuildContext {
//   String? get currentUserImage => currentUser!.image;

//   User? get currentUser => StreamChatCore.of(this).currentUser;
// }

import 'package:flutter/material.dart';
import 'package:logger/logger.dart' as log;
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';

const streamKey = '8av4ptc57ynh'; // TODO: input your Stream app key here.

var logger = log.Logger();

/// Extensions can be used to add functionality to the SDK.
extension StreamChatContext on BuildContext {
  /// Fetches the current user image.
  String? get currentUserImage => currentUser!.image;

  /// Fetches the current user.
  User? get currentUser => StreamChatCore.of(this).currentUser;
}
