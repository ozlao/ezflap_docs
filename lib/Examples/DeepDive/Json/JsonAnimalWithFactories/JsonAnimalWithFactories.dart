
import 'dart:convert';
import 'package:ezflap/ezflap.dart';

part "JsonAnimalWithFactories.g.dart";

@EzJson()
class JsonAnimalWithFactories extends _JsonAnimalWithFactoriesBase {

	static factoryFromJson(String json) => _JsonAnimalWithFactoriesBase.factoryFromJson(json);
	static factoryFromJsonMap(Map<String, dynamic> map) => _JsonAnimalWithFactoriesBase.factoryFromJsonMap(map);

	@EzValue() late int id;
	@EzValue() late String name;
	@EzValue() double? iq;

	@override
	String toString() {
		return """\n
			Animal (${id})
			name=${name}
			iq=${iq}
		""";
	}
}





