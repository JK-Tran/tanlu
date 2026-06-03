// import 'package:flame_audio/flame_audio.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:tanlu_management/shared/utils/log_utils.dart';

// class AppAudio {
//   AppAudio._();

//   static const String _bgmKey = 'is_bgm_enabled';
//   static const String _bgmFile = 'music-app.mp3';
//   static const String _clickFile = 'click-category.wav';
//   static const String _completeGameFile = 'complete-game.wav';
//   static const String _loseFile = 'game -lose.mp3';

//   static Future<void> preload() async {
//     try {
//       Log.d('AppAudio: Bắt đầu preload âm thanh...');
//       // Thiết lập AudioContext toàn cục (Audioplayers v6)
//       await AudioPlayer.global.setAudioContext(
//         AudioContext(
//           android: const AudioContextAndroid(
//             usageType: AndroidUsageType.media,
//             contentType: AndroidContentType.music,
//             audioFocus: AndroidAudioFocus.gain,
//           ),
//           iOS: AudioContextIOS(category: AVAudioSessionCategory.ambient),
//         ),
//       );

//       FlameAudio.audioCache.prefix = 'assets/sounds/';

//       Log.d('AppAudio: Đang load SFX: $_clickFile');
//       await FlameAudio.audioCache.load(_clickFile);

//       Log.d('AppAudio: Đang load SFX: $_completeGameFile');
//       await FlameAudio.audioCache.load(_completeGameFile);

//       Log.d('AppAudio: Đang load SFX: $_loseFile');
//       await FlameAudio.audioCache.load(_loseFile);

//       Log.d('AppAudio: Đang load BGM: $_bgmFile');
//       await FlameAudio.audioCache.load(_bgmFile);
//       Log.d('AppAudio: Preload hoàn tất!');
//     } catch (e) {
//       Log.d('AppAudio: Lỗi preload Flame Audio: $e');
//     }
//   }

//   /// Phát âm thanh click ngay lập tức (SFX)
//   static Future<void> playClickCategory() async {
//     try {
//       await FlameAudio.play(_clickFile);
//     } catch (e) {
//       Log.d('Lỗi phát âm thanh Flame: $e');
//     }
//   }

//   /// Phát âm thanh hoàn thành màn chơi ngay lập tức (SFX)
//   static Future<void> playCompleteGame() async {
//     try {
//       await FlameAudio.play(_completeGameFile);
//     } catch (e) {
//       Log.d('Lỗi phát âm thanh Flame complete-game: $e');
//     }
//   }

//   /// Phát âm thanh khi chọn sai (SFX)
//   static Future<void> playLoseSound() async {
//     try {
//       await FlameAudio.play(_loseFile);
//     } catch (e) {
//       Log.d('Lỗi phát âm thanh Flame game -lose: $e');
//     }
//   }

//   static void startBgm() {
//     Log.d('AppAudio: Yêu cầu phát nhạc nền - $_bgmFile');
//     try {
//       if (!FlameAudio.bgm.isPlaying) {
//         // Tăng âm lượng lên 0.5 để dễ nghe hơn
//         FlameAudio.bgm.play(_bgmFile, volume: 0.5);
//         Log.d('AppAudio: Đã gọi lệnh phát nhạc nền');
//       } else {
//         Log.d('AppAudio: Nhạc nền đang phát rồi');
//       }
//     } catch (e) {
//       Log.d('AppAudio: Lỗi khi phát nhạc nền: $e');
//     }
//   }

//   /// Dừng nhạc nền
//   static void stopBgm() {
//     Log.d('AppAudio: Dừng nhạc nền');
//     try {
//       FlameAudio.bgm.stop();
//     } catch (e) {
//       Log.d('AppAudio: Lỗi khi dừng nhạc nền: $e');
//     }
//   }

//   /// Kiểm tra trạng thái nhạc nền từ cài đặt
//   static Future<bool> isBgmEnabled() async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       return prefs.getBool(_bgmKey) ?? true; // Mặc định là bật
//     } catch (e) {
//       Log.d('AppAudio: Lỗi khi kiểm tra trạng thái nhạc nền: $e');
//       return true;
//     }
//   }

//   /// Khôi phục nhạc nền nếu được bật trong cài đặt
//   static Future<void> resumeBgmIfEnabled() async {
//     try {
//       final enabled = await isBgmEnabled();
//       if (enabled) {
//         startBgm();
//       }
//     } catch (e) {
//       Log.d('AppAudio: Lỗi khi khôi phục nhạc nền: $e');
//     }
//   }

//   static Future<void> toggleBgm() async {
//     final prefs = await SharedPreferences.getInstance();
//     final currentState = prefs.getBool(_bgmKey) ?? true;
//     final newState = !currentState;

//     await prefs.setBool(_bgmKey, newState);

//     if (newState) {
//       startBgm();
//     } else {
//       stopBgm();
//     }
//   }

//   static void dispose() {
//     try {
//       FlameAudio.bgm.dispose();
//     } catch (e) {
//       Log.d('AppAudio: Lỗi khi dispose Flame Audio BGM: $e');
//     }
//   }
// }
