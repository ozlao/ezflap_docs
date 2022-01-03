
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonOwnerRx/JsonOwnerRx.dart';
import 'package:flutter/material.dart';

part 'DeserializeJsonOwnerRxWithFactoryFromJsonWidget.g.dart';

class DeserializeJsonOwnerRxWithFactoryFromJsonWidget extends EzStatefulWidgetBase {
	@override
	DeserializeJsonOwnerRxWithFactoryFromJsonWidgetState createState() => DeserializeJsonOwnerRxWithFactoryFromJsonWidgetState();
}

@EzWidget()
class DeserializeJsonOwnerRxWithFactoryFromJsonWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container />
	""";


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		String json = """
			{
				"id": 42,
				"name": "Alice",
				"favoriteAnimal": {
					"id": 37,
					"name": "cat",
					"iq": 126.7
				},
				"otherAnimalsByIdsMap": {
					"55": {
						"id": 55,
						"name": "dog",
						"iq": 126.699
					},
					"3112": {
						"id": 3112,
						"name": "tardigrade",
						"iq": 3.0
					}
				}
			}
		""";

		JsonOwnerRx owner = JsonOwnerRx.factoryFromJson(json);
		print("Owner: ${owner}");
	}
}




