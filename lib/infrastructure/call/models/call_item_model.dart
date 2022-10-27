import 'package:demo_app/domain/call/entities/call_item.dart';
import 'package:json_annotation/json_annotation.dart';
part 'call_item_model.g.dart';

@JsonSerializable()
class CallItemModel extends CallItem {
  const CallItemModel({required id, required name, required number})
      : super(id: id, name: name, number: number);

  @override
  List<Object?> get props => [id, name, number];

  factory CallItemModel.fromJson(Map<String, dynamic> json) =>
      _$CallItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$CallItemModelToJson(this);
}
