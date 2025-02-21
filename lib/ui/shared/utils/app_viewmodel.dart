import 'package:flutter/foundation.dart';
import 'package:sharp_work/core/core.dart';

abstract class AppViewModel extends ChangeNotifier {
  final _router = locator<SharpRouter>();
  SharpRouter get router => _router;

  // This is for managing the general busy state
  bool _isBusy = false;

  // This will hold busy states for specific objects
  final Map<Object, bool> _busyStates = {};

  // This is for managing the general error state
  String? _error;

  // This will hold error states for specific objects
  final Map<Object, String?> _errorStates = {};

  // Getter for the general busy state
  bool get isBusy => _isBusy;

  // Setter for the general busy state
  void setBusy(bool value) {
    _isBusy = value;
    notifyListeners();
  }

  // Getter for busy state of a specific object
  bool isBusyForObject(Object object) {
    return _busyStates[object] ?? false;
  }

  // Setter for busy state of a specific object
  void setBusyForObject(Object object, bool value) {
    _busyStates[object] = value;
    notifyListeners();
  }

  // Reset the busy state of all objects
  void clearBusyStates() {
    _busyStates.clear();
    notifyListeners();
  }

  // Getter for the general error state
  String? get error => _error;

  // Setter for the general error state
  void setError(String? value) {
    _error = value;
    notifyListeners();
  }

  // Method to check if there is a general error
  bool get hasError => _error != null && _error!.isNotEmpty;

  // Getter for error state of a specific object
  String? errorForObject(Object object) {
    return _errorStates[object];
  }

  // Setter for error state of a specific object
  void setErrorForObject(Object object, String? value) {
    _errorStates[object] = value;
    notifyListeners();
  }

  // Method to check if a specific object has an error
  bool hasErrorForObject(Object object) {
    final error = _errorStates[object];
    return error != null && error.isNotEmpty;
  }

  // Reset the error state of all objects
  void clearErrorStates() {
    _errorStates.clear();
    notifyListeners();
  }
}
