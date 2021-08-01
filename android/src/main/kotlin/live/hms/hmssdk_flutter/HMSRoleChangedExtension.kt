package live.hms.hmssdk_flutter

import live.hms.video.sdk.models.HMSRoleChangeRequest

class HMSRoleChangedExtension {
    companion object{
        fun toDictionary(role:HMSRoleChangeRequest):HashMap<String,Any>{
            val args=HashMap<String,Any>()
            args.put("requested_by",HMSPeerExtension.toDictionary(role.requestedBy)!!)
            args.put("suggested_role",HMSRoleExtension.toDictionary(role.suggestedRole)!!)
            args.put("token",role.token)
            val roleChanged=HashMap<String,Any>()
            roleChanged.put("role_changed",args)
            return roleChanged
        }
    }
}