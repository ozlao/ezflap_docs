
import 'dart:convert';
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonAnimal/JsonAnimal.dart';

part "JsonOwner.g.dart";

@EzJson()
class JsonOwner extends _JsonOwnerBase {
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





