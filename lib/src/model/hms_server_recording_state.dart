// Project imports:
import '../../hmssdk_flutter.dart';

///[HMSServerRecordingState] instance has server recording state of the room.
class HMSServerRecordingState {
  final HMSException? error;
  final bool running;
  HMSServerRecordingState({required this.error, required this.running});

  factory HMSServerRecordingState.fromMap(Map map) {
    return HMSServerRecordingState(
      error: map["error"] != null ? HMSException.fromMap(map) : null,
      running: map['running'],
    );
  }
}
