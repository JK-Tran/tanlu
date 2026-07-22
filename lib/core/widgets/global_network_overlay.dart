import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:tanlu_management/core/themes/app_colors.dart';
import 'package:tanlu_management/core/widgets/app_text.dart';
import 'package:tanlu_management/l10n/l10n.dart';

class GlobalNetworkOverlay extends StatefulWidget {
  const GlobalNetworkOverlay({super.key, required this.child});

  final Widget child;

  @override
  State<GlobalNetworkOverlay> createState() => _GlobalNetworkOverlayState();
}

class _GlobalNetworkOverlayState extends State<GlobalNetworkOverlay> {
  bool _isConnected = true;
  late StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    _checkInitialConnection();
    _subscription = Connectivity().onConnectivityChanged.listen(
      _onConnectivityChanged,
    );
  }

  Future<void> _checkInitialConnection() async {
    final results = await Connectivity().checkConnectivity();
    await _onConnectivityChanged(results);
  }

  Future<void> _onConnectivityChanged(List<ConnectivityResult> results) async {
    // If no network interfaces are active, we are offline
    final hasNetwork = !results.contains(ConnectivityResult.none);
    if (!hasNetwork) {
      if (_isConnected) {
        setState(() => _isConnected = false);
      }
      return;
    }

    // Double check with a real ping to the internet
    final hasInternet = await InternetConnectionChecker().hasConnection;
    if (_isConnected != hasInternet) {
      setState(() => _isConnected = hasInternet);
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (!_isConnected)
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 0,
            right: 0,
            child: Material(
              color: Colors.transparent,
              child: Container(
                color: AppColors.error,
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.wifi_off, color: Colors.white, size: 14),
                    const SizedBox(width: 8),
                    AppText.b2(
                      context.l10n.noInternet,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
