// Project imports:
import 'package:hmssdk_flutter/hmssdk_flutter.dart';

///[HMSPeerRemovedFromPeer] is the class which contains the info about the peer who removed you and why
class HMSPeerRemovedFromPeer {
  ///[peerWhoRemoved] is the instance of the peer who removed you
  final HMSPeer? peerWhoRemoved;

  ///this is the reason why remote peer removed you.
  final String reason;

  ///[roomWasEnded] ti check whether room was ended or not.
  final bool roomWasEnded;

  HMSPeerRemovedFromPeer(
      {required this.peerWhoRemoved,
      required this.reason,
      required this.roomWasEnded});

  Map<String, dynamic> toMap() {
    return {
      'peer_who_removed': this.peerWhoRemoved,
      'reason': this.reason,
      'room_was_ended': this.roomWasEnded,
    };
  }

  @override
  String toString() {
    return 'HMSPeerRemovedFromPeer{peerWhoRemoved: $peerWhoRemoved, reason: $reason, roomWasEnded: $roomWasEnded}';
  }

  factory HMSPeerRemovedFromPeer.fromMap(Map map) {
    return HMSPeerRemovedFromPeer(
      peerWhoRemoved: map['peer_who_removed'] != null
          ? HMSPeer.fromMap(map['peer_who_removed'])
          : null,
      reason: map['reason'] as String,
      roomWasEnded: map['room_was_ended'] as bool,
    );
  }
}
