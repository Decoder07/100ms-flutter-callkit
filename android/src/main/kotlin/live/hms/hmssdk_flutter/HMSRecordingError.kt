package live.hms.hmssdk_flutter

import live.hms.video.sdk.models.RecordingError

class HMSRecordingError {
    companion object{
        fun toDictionary(recordingError: RecordingError?):HashMap<String,Any>?{
            val args=HashMap<String,Any>()
            if (recordingError==null)return null
            args.put("code",recordingError.code!!)
            args.put("message",recordingError.message!!)

            val errorArgs=HashMap<String,Any>()
            errorArgs.put("error",args)
            return errorArgs
        }
    }
}