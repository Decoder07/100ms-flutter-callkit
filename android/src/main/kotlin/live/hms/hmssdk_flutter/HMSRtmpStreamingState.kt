
import live.hms.hmssdk_flutter.HMSExceptionExtension
import live.hms.hmssdk_flutter.HMSHLSVariantExtension
import live.hms.hmssdk_flutter.HMSRecordingError
import live.hms.hmssdk_flutter.HMSRtmpError
import live.hms.video.sdk.models.HMSBrowserRecordingState
import live.hms.video.sdk.models.HMSHLSStreamingState
import live.hms.video.sdk.models.HMSRtmpStreamingState
import live.hms.video.sdk.models.HMSServerRecordingState

class HMSStreamingState {
    companion object{
        fun toDictionary(hmsRtmpStreamingState: HMSRtmpStreamingState?):HashMap<String,Any?>?{
            val map = HashMap<String,Any?>()
            if(hmsRtmpStreamingState == null)return null
            map["running"] = hmsRtmpStreamingState.running
            map["error"] = HMSRtmpError.toDictionary(hmsRtmpStreamingState.error)
            map["startAt"] = hmsRtmpStreamingState.startedAt
            map["stopAt"] = hmsRtmpStreamingState.stoppedAt
            return map
        }

        fun toDictionary(hmsServerRecordingState: HMSServerRecordingState?):HashMap<String,Any?>?{
            val map = HashMap<String,Any?>()
            if(hmsServerRecordingState == null)return null
            map["running"] = hmsServerRecordingState.running
            map["error"] = HMSExceptionExtension.toDictionary(hmsServerRecordingState.error)
            map["startAt"] = hmsServerRecordingState.startedAt
            return map
        }

        fun toDictionary(hmsBrowserRecordingState: HMSBrowserRecordingState?):HashMap<String,Any?>?{
            val map = HashMap<String,Any?>()
            if(hmsBrowserRecordingState == null)return null
            map["running"] = hmsBrowserRecordingState.running
            map["error"] = HMSRecordingError.toDictionary(hmsBrowserRecordingState.error)
            map["startAt"] = hmsBrowserRecordingState.startedAt
            map["stopAt"] = hmsBrowserRecordingState.stoppedAt
            return map
        }

        fun toDictionary(hmsHlsStreamingState: HMSHLSStreamingState?):HashMap<String,Any?>?{
            val map = HashMap<String,Any?>()
            if(hmsHlsStreamingState == null)return null
            map["running"] = hmsHlsStreamingState.running
            val args=ArrayList<Any>()
            hmsHlsStreamingState.variants?.forEach {
                args.add(HMSHLSVariantExtension.toDictionary(it)!!)
            }
            map["variants"]=args
            return map
        }

    }

}
