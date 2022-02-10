package live.hms.hmssdk_flutter

import live.hms.video.sdk.models.RtmpError

class HMSRtmpError {
    companion object{
        fun toDictionary(rtmpError: RtmpError?):HashMap<String,Any>?{
            val args=HashMap<String,Any>()
            if (rtmpError==null)return null
            args.put("code",rtmpError.code!!)
            args.put("message",rtmpError.message!!)

            val errorArgs=HashMap<String,Any>()
            errorArgs.put("error",args)
            return errorArgs
        }
    }
}