import 'package:flutter/material.dart';

import 'package:anime_tracker/src/components/graphql_operation.dart';
import 'package:anime_tracker/src/graphql/queries/viewer_info/viewer_info.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static get page => MaterialPage(
        child: Scaffold(
          appBar: AppBar(title: const Text('Anime Tracker')),
          body: const Home(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GraphqlOperation<GViewerInfoData, GViewerInfoVars>(
        operationRequest: GViewerInfoReq(),
        builder: (context, response, error) {
          final viewer = response?.data?.Viewer;
          if (viewer != null) {
            return Column(
              children: [
                Text(viewer.id.toString()),
                Text(viewer.name),
                Image.network(viewer.avatar?.medium ?? ''),
              ],
            );
          }
          return Text(error?.toString() ?? 'Loading...');
        },
      ),
    );
  }
}
