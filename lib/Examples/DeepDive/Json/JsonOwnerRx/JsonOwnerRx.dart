
import 'dart:convert';
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonAnimal/JsonAnimal.dart';
import 'package:get/get.dart';

part "JsonOwnerRx.g.dart";

@EzJson()
@EzReactive()
class JsonOwnerRx extends _JsonOwnerRxBase {
	static factoryFromJson(String json) => _JsonOwnerRxBase.factoryFromJson(json);
	static factoryFromJsonMap(Map<String, dynamic> map) => _JsonOwnerRxBase.factoryFromJsonMap(map);

	@EzValue() late int _$id; // --> this.id
	@EzValue() late String _$name; // --> this.name
	@EzValue() late JsonAnimal _$favoriteAnimal; // --> this.favoriteAnimal
	@EzValue() late RxMap<String, JsonAnimal> _$otherAnimalsByIdsMap; // --> this.otherAnimalsByIdsMap

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





