import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _pointPro = _latLngFromString(prefs.getString('ff_pointPro'));
  }

  SharedPreferences prefs;

  int numberOfPeople = 0;

  LatLng Localisation;

  LatLng _pointPro;
  LatLng get pointPro => _pointPro;
  set pointPro(LatLng _value) {
    _pointPro = _value;
    prefs.setString('ff_pointPro', _value.serialize());
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
