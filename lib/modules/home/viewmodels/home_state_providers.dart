import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:deliverzler/core/routing/route_paths.dart';
import 'package:deliverzler/modules/home/models/order_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final homeNavIndexProvider = StateProvider<int>((ref) => 1);

final homeNavRoutesProviders = [
  StateProvider<String>((ref) => RoutePaths.profile),
  StateProvider<String>((ref) => RoutePaths.homeMain),
  StateProvider<String>((ref) => RoutePaths.settings),
];

final selectedOrderProvider = StateProvider<OrderModel?>((ref) => null);
final selectedPlaceGeoPointProvider = StateProvider<GeoPoint?>((ref) => null);