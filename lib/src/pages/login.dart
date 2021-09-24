import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'error.dart';
import 'package:anime_tracker/src/core/providers.dart';
import 'package:anime_tracker/src/auth/providers.dart';

class Login extends ConsumerStatefulWidget {
  const Login({Key? key}) : super(key: key);

  static get page => MaterialPage(
        child: Scaffold(
          appBar: AppBar(title: const Text('Anime Tracker')),
          body: const Login(),
        ),
      );

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  Future<bool>? future;

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    final authService = ref.read(authServiceProvider);
    future = authService.login();
  }

  @override
  Widget build(BuildContext _context) {
    final authService = ref.watch(authServiceProvider);
    final config = ref.watch(configProvider);

    return FutureBuilder<bool>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Error();
        }
        if (snapshot.data == false) {
          return WebView(
            initialUrl: authService.getAuthorizationUrl().toString(),
            javascriptMode: JavascriptMode.unrestricted,
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith(config.redirectUrl)) {
                final redirected = Uri.parse(request.url);
                setState(() {
                  future = authService.loginFrom(redirected);
                });
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          );
        }
        return loading();
      },
    );
  }

  Widget loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
