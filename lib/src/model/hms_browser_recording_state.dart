// Project imports:
import 'package:hmssdk_flutter/src/exceptions/hms_exception.dart';

///[HMSBrowserRecordingState] instance has browser recording state of the room.
class HMSBrowserRecordingState {
  final HMSException? error;
  final bool running;
  HMSBrowserRecordingState({required this.error, required this.running});

  factory HMSBrowserRecordingState.fromMap(Map map) {
    return HMSBrowserRecordingState(
      error: map["error"] != null ? HMSException.fromMap(map) : null,
      running: map['running'],
    );
  }
}
