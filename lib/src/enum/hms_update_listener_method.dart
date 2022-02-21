enum HMSUpdateListenerMethod {

  ///when you join the room you will get this callback
  onJoinRoom,

  ///when room is updated you will get this callback
  onUpdateRoom,

  ///when there is peer update you will get this callback
  onPeerUpdate,

  ///when track is received you will get this callback.
  onTrackUpdate,

  ///when some error comes.
  onError,

  ///when you get message you get this callback.
  onMessage,

  ///when you get onUpdateSpeaker callback.
  onUpdateSpeaker,

  ///when you get onRecconecting callaback
  onReconnecting,

  ///when you reconnect back
  onReconnected,

  ///when someone wants to change your role
  onRoleChangeRequest,

  ///when someone wants to change your track.
  onChangeTrackStateRequest,

  ///when someone rwemoves you.
  onRemovedFromRoom,
  unknown
}

extension HMSUpdateListenerMethodValues on HMSUpdateListenerMethod {
  static HMSUpdateListenerMethod getMethodFromName(String name) {
    switch (name) {
      case 'on_join_room':
        return HMSUpdateListenerMethod.onJoinRoom;
      case 'on_room_update':
        return HMSUpdateListenerMethod.onUpdateRoom;
      case 'on_peer_update':
        return HMSUpdateListenerMethod.onPeerUpdate;
      case 'on_track_update':
        return HMSUpdateListenerMethod.onTrackUpdate;
      case 'on_error':
        return HMSUpdateListenerMethod.onError;
      case 'on_message':
        return HMSUpdateListenerMethod.onMessage;
      case 'on_update_speaker':
        return HMSUpdateListenerMethod.onUpdateSpeaker;
      case 'on_re_connecting':
        return HMSUpdateListenerMethod.onReconnecting;
      case 'on_re_connected':
        return HMSUpdateListenerMethod.onReconnected;
      case 'on_role_change_request':
        return HMSUpdateListenerMethod.onRoleChangeRequest;
      case 'on_change_track_state_request':
        return HMSUpdateListenerMethod.onChangeTrackStateRequest;
      case 'on_removed_from_room':
        return HMSUpdateListenerMethod.onRemovedFromRoom;
      default:
        return HMSUpdateListenerMethod.unknown;
    }
  }
}
