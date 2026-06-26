abstract final class AppMediaLimit {
  AppMediaLimit._();

  static const maxImagesPerPost = 10;
  static const maxVideosPerPost = 1;

  static const maxImageBytes = 10 * 1024 * 1024;
  static const maxImageMegabytes = 10;

  static const maxVideoBytes = 20 * 1024 * 1024;
  static const maxVideoMegabytes = 20;
}
