// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MapViewModel on MapViewBase, Store {
  final _$dogIconAtom = Atom(name: 'MapViewBase.dogIcon');

  @override
  BitmapDescriptor get dogIcon {
    _$dogIconAtom.reportRead();
    return super.dogIcon;
  }

  @override
  set dogIcon(BitmapDescriptor value) {
    _$dogIconAtom.reportWrite(value, super.dogIcon, () {
      super.dogIcon = value;
    });
  }

  @override
  String toString() {
    return '''
dogIcon: ${dogIcon}
    ''';
  }
}
