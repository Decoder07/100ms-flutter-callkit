// Project imports:
import '../../hmssdk_flutter.dart';


///[HMSMessageResultListener] is the listener wher you get callbacks about meesage releated things.
abstract class HMSMessageResultListener {
  void onSuccess({required HMSMessage hmsMessage});

  void onError({HMSException? hmsException});
}
