
import 'dart:convert';
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonAnimal/JsonAnimal.dart';

part "JsonOwnerWithFactories.g.dart";

@EzJson()
class JsonOwnerWithFactories extends _JsonOwnerWithFactoriesBase {

	static factoryFromJson(String json) => _JsonOwnerWithFactoriesBase.factoryFromJson(json);
	static factoryFromJsonMap(Map<String, dynamic> map) => _JsonOwnerWithFactoriesBase.factoryFromJsonMap(map);

	@EzValue() late int id;
	@EzValue() late String name;
	@EzValue() late JsonAnimal favoriteAnimal;
	@EzValue() late Map<String, JsonAnimal> otherAnimalsByIdsMap;

	@override
	String toString() {
		return """\n
			Owner (${id})
			name=${name}
			favoriteAnimal=${favoriteAnimal}
			otherAnimalsByIdsMap=${otherAnimalsByIdsMap}
		""";
	}
}





