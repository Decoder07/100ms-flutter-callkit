import 'package:hmssdk_flutter/hmssdk_flutter.dart';

class RTCStats {
  HMSRemoteAudioStats? hmsRemoteAudioStats;
  HMSLocalVideoStats? hmsLocalVideoStats;
  HMSRemoteVideoStats? hmsRemoteVideoStats;
  HMSLocalAudioStats? hmsLocalAudioStats;

  RTCStats(
      {this.hmsRemoteVideoStats,
      this.hmsRemoteAudioStats,
      this.hmsLocalAudioStats,
      this.hmsLocalVideoStats});
}
