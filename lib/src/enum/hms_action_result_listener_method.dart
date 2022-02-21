enum HMSActionResultListenerMethod {

  ///when you get leave update from [HMSActionResultListenerMethod]
  leave,

  ///when you get changeTrackState update from [HMSActionResultListenerMethod]
  changeTrackState,

  ///when you get changeMetadata update from [HMSActionResultListenerMethod]
  changeMetadata,

  ///when you get endRoom update from [HMSActionResultListenerMethod]
  endRoom,

  ///when you get removePeer update from [HMSActionResultListenerMethod]
  removePeer,

  ///when you get acceptChangeRole update from [HMSActionResultListenerMethod]
  acceptChangeRole,

  ///when you get changeRole update from [HMSActionResultListenerMethod]
  changeRole,

  ///when you get changeTrackStateForRole update from [HMSActionResultListenerMethod]
  changeTrackStateForRole,

  ///when you get startRtmpOrRecording update from [HMSActionResultListenerMethod]
  startRtmpOrRecording,

  ///when you get stopRtmpAndRecording update from [HMSActionResultListenerMethod]
  stopRtmpAndRecording,

  ///when you get changeName update from [HMSActionResultListenerMethod]
  changeName,

  ///when you get sendBroadcastMessage update from [HMSActionResultListenerMethod]
  sendBroadcastMessage,

  ///when you get sendGroupMessage update from [HMSActionResultListenerMethod]
  sendGroupMessage,

  ///when you get sendDirectMessage update from [HMSActionResultListenerMethod]
  sendDirectMessage,

  ///when you get hlsStreamingStarted update from [HMSActionResultListenerMethod]
  hlsStreamingStarted,

  ///when you get hlsStreamingStopped update from [HMSActionResultListenerMethod]
  hlsStreamingStopped,

  ///when you get startScreenShare update from [HMSActionResultListenerMethod]
  startScreenShare,

  ///when you get stopScreenShare update from [HMSActionResultListenerMethod]
  stopScreenShare,
  unknown
}
