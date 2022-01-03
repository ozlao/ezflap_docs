
import 'dart:convert';
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonAnimal/JsonAnimal.dart';
import 'package:get/get.dart';

part "JsonOwnerManualRx.g.dart";

@EzJson()
class JsonOwnerManualRx extends _JsonOwnerManualRxBase {
	static factoryFromJson(String json) => _JsonOwnerManualRxBase.factoryFromJson(json);
	static factoryFromJsonMap(Map<String, dynamic> map) => _JsonOwnerManualRxBase.factoryFromJsonMap(map);

	@EzValue() late int id;
	@EzValue() late String name;
	@EzValue() late JsonAnimal favoriteAnimal;

	@EzValue() late  RxMap<String, JsonAnimal> otherAnimalsByIdsMap;

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





