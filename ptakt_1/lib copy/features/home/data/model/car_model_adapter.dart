import 'package:avtomobile/features/home/data/model/car_model.dart';
import 'package:hive/hive.dart';

class CarModelAdapter extends TypeAdapter<CarModel> {
  @override
  final typeId = 0;

  @override
  void write(BinaryWriter writer, CarModel obj) {
    writer.writeString(obj.brand);
    writer.writeString(obj.model);
    writer.writeString(obj.category);
    writer.writeString(obj.quality);
  }

  @override
  CarModel read(BinaryReader reader) {
    return CarModel(
      brand: reader.readString(),
      model: reader.readString(),
      category: reader.readString(),
      quality: reader.readString(),
    );
  }
}
