import 'package:hive/hive.dart';

part 'table_model.g.dart';

@HiveType(typeId: 0)
class TableModel extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String number;

  @HiveField(2)
  final TableStatus status;

  @HiveField(3)
  final int capacity;

  @HiveField(4)
  final String? activeOrderId;

  TableModel({
    required this.id,
    required this.number,
    required this.status,
    required this.capacity,
    this.activeOrderId,
  });

  TableModel copyWith({
    String? id,
    String? number,
    TableStatus? status,
    int? capacity,
    String? activeOrderId,
  }) {
    return TableModel(
      id: id ?? this.id,
      number: number ?? this.number,
      status: status ?? this.status,
      capacity: capacity ?? this.capacity,
      activeOrderId: activeOrderId ?? this.activeOrderId,
    );
  }
}

@HiveType(typeId: 1)
enum TableStatus {
  @HiveField(0)
  available,
  @HiveField(1)
  occupied
}
