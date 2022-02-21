// Project imports:
import 'package:hmssdk_flutter/src/exceptions/hms_exception.dart';

///[HMSRtmpStreamingState] instance has rtmp streaming state of the room.
class HMSRtmpStreamingState {
  final HMSException? error;
  final bool running;
  HMSRtmpStreamingState({required this.error, required this.running});

  factory HMSRtmpStreamingState.fromMap(Map map) {
    return HMSRtmpStreamingState(
      error: map["error"] != null ? HMSException.fromMap(map) : null,
      running: map['running'],
    );
  }
}
