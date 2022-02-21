
///[HMSPermissions] instance is a part of HMSPeer which tells what all permissions that peer has.
class HMSPermissions {

  ///tells whether endRoom permission is present or not.
  final bool? endRoom;

  ///tells whether removeOthers permission is present or not.
  final bool? removeOthers;

  ///tells whether stopPresentation permission is present or not.
  final bool? stopPresentation;

  ///tells whether mute permission is present or not.
  final bool? mute;

  ///tells whether unMute permission is present or not.
  final bool? unMute;

  ///tells whether changeRoleForce permission is present or not.
  final bool? changeRoleForce;

  ///tells whether changeRole permission is present or not.
  final bool? changeRole;

  HMSPermissions(
      {this.endRoom,
      this.removeOthers,
      this.stopPresentation,
      this.mute,
      this.unMute,
      this.changeRoleForce,
      this.changeRole});

  factory HMSPermissions.fromMap(Map map) {
    return HMSPermissions(
        endRoom: map['end_room'],
        removeOthers: map['remove_others'],
        stopPresentation: map['stop_presentation'],
        mute: map['mute'],
        unMute: map['un_mute'],
        changeRoleForce: map['change_role_force'],
        changeRole: map['change_role']);
  }

  Map<String, dynamic> toJson() {
    return {
      'end_room': endRoom,
      'stop_presentation': stopPresentation,
      'remove_others': removeOthers,
      'mute': mute,
      'un_mute': unMute,
      'change_role_force': changeRoleForce,
      'change_role': changeRole
    };
  }
}
