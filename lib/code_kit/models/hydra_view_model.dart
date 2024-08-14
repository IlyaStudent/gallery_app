part of '../code_kit.dart';

class HydraViewModel {
  final String id;
  final String type;
  final String? first;
  final String? last;
  final String? previous;
  final String? next;

  HydraViewModel({
    required this.id,
    required this.type,
    this.first,
    this.last,
    this.previous,
    this.next,
  });
}
