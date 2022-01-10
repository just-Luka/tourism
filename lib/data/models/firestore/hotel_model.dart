import 'package:eapp1/data/models/firestore/i_model_json_convert.dart';

class HotelModel implements IModelJsonConvert {
  late int id;
  late String location;
  late String name;
  late String per;
  late String star;

  HotelModel();

  HotelModel.encapsulate({
    required this.id,
    required this.location,
    required this.name,
    required this.per,
    required this.star,
  });

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'location': location,
      'name': name,
      'per': per,
      'star': star,
    };
  }

  @override
  HotelModel fromMap(Map<String, dynamic> map) {
    return HotelModel.encapsulate(
      id: map['id'] as int,
      location: map['location'] as String,
      name: map['name'] as String,
      per: map['per'] as String,
      star: map['star'] as String,
    );
  }
}