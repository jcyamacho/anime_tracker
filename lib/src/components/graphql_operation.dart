import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:anime_tracker/src/graphql/providers.dart';

import 'error_details.dart';

class GraphqlOperation<TData, TVars> extends ConsumerWidget {
  final OperationRequest<TData, TVars> operationRequest;
  final OperationResponseBuilder<TData, TVars> builder;

  const GraphqlOperation({
    Key? key,
    required this.operationRequest,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(clientProvider);
    return value.when(data: render, loading: loading, error: error);
  }

  Widget render(Client client) {
    return Operation(
      operationRequest: operationRequest,
      builder: builder,
      client: client,
    );
  }

  Widget loading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget error(Object _error, StackTrace? _stackTrace) {
    return const ErrorDetail();
  }
}
