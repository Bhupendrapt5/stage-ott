import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectvityProvider =
    FutureProvider<List<ConnectivityResult>>((ref) async {
  return await Connectivity().checkConnectivity();
});

final connectvityChangedProvider = StreamProvider<List<ConnectivityResult>>(
  (ref) => Connectivity().onConnectivityChanged,
);
