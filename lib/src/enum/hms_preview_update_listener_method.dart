enum HMSPreviewUpdateListenerMethod {
  ///when you get onPreview
  onPreviewVideo,

  ///when you get onError
  onError,
  unknown
}

extension HMSPreviewUpdateListenerMethodValues
    on HMSPreviewUpdateListenerMethod {
  static HMSPreviewUpdateListenerMethod getMethodFromName(String name) {
    switch (name) {
      case 'preview_video':
        return HMSPreviewUpdateListenerMethod.onPreviewVideo;
      case 'on_error':
        return HMSPreviewUpdateListenerMethod.onError;
      default:
        return HMSPreviewUpdateListenerMethod.unknown;
    }
  }
}
