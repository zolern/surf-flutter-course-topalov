/*
name -  название достопримечательности
lat, lon - координаты места
url - путь до фотографии в интернете
details - описание достопримечательности
type - тип достопримечательности.
*/

import 'package:flutter/foundation.dart';

class Sight {
  final String name;
  final double lat, lon;
  final String url;
  final String details;
  final String type;

  Sight({
    @required this.name,
    @required this.lat,
    @required this.lon,
    @required this.url,
    @required this.details,
    @required this.type,
  });
}
