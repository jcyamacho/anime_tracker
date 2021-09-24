import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth/auth_service.dart';
import 'auth/providers.dart';

import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/error.dart';

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authStatus = ref.watch(authStatusStreamProvider);

    return authStatus.when(
      data: render,
      loading: loading,
      error: error,
    );
  }

  Widget render(AuthenticationStatus state) {
    return FlowBuilder<AuthenticationStatus>(
      state: state,
      onGeneratePages: (status, pages) {
        if (status != AuthenticationStatus.authenticated) {
          return [
            Login.page,
          ];
        }
        return [
          Home.page,
        ];
      },
    );
  }

  Widget loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget error(Object _error, StackTrace? _stackTrace) {
    return const Error();
  }
}
