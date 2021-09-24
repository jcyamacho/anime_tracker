import 'package:flutter_riverpod/flutter_riverpod.dart';
import './config.dart';

final configProvider = Provider<Config>((_) => Config.fromEnvironment());
