
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonOwnerWithFactories/JsonOwnerWithFactories.dart';
import 'package:flutter/material.dart';

part 'DeserializeJsonOwnerWithFactoryFromMapWidget.g.dart';

class DeserializeJsonOwnerWithFactoryFromMapWidget extends EzStatefulWidgetBase {
	DeserializeJsonOwnerWithFactoryFromMapWidget({ Key? key }) : super(key: key);

	@override
	DeserializeJsonOwnerWithFactoryFromMapWidgetState createState() => DeserializeJsonOwnerWithFactoryFromMapWidgetState();
}

@EzWidget()
class DeserializeJsonOwnerWithFactoryFromMapWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container />
	""";


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		var map = {
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
		};

		JsonOwnerWithFactories owner = JsonOwnerWithFactories.factoryFromJsonMap(map);
		print("Owner: ${owner}");
	}
}




