// Project imports:
import 'package:hmssdk_flutter/src/enum/hms_action_result_listener_method.dart';
import 'package:hmssdk_flutter/src/exceptions/hms_exception.dart';

///[HMSActionResultListener] is a listener when you call apis you need to pass optional listener through which you will get callbacks.
abstract class HMSActionResultListener {

  ///when the operation you want to perform succeed.
  void onSuccess(
      {HMSActionResultListenerMethod methodType,
      Map<String, dynamic>? arguments});

  ///when you get exception.
  void onException(
      {HMSActionResultListenerMethod methodType,
      Map<String, dynamic>? arguments,
      required HMSException hmsException});
}
