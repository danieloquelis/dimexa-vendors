import 'package:permission_handler/permission_handler.dart';

class AppPermission {
  String title;
  String description;
  String svgAsset;
  String? semanticLevel;
  Permission permissionType;

  AppPermission({
    required this.title,
    required this.description,
    required this.svgAsset,
    this.semanticLevel = "",
    required this.permissionType
  });

}

List<AppPermission> requiredPermissions = [
  AppPermission(
    title: "Permisos de ubicación",
    description: "Necesitamos tu ubicación para poder geolocaliar a tus clientes",
    svgAsset: "assets/images/location_permission.svg",
    permissionType: Permission.location
  ),
  AppPermission(
    title: "Permisos de telefonía",
    description: "Contacta a tus clientes de una manera más sencilla y rápida",
    svgAsset: "assets/images/phone_state_permission.svg",
    permissionType: Permission.phone
  )
];