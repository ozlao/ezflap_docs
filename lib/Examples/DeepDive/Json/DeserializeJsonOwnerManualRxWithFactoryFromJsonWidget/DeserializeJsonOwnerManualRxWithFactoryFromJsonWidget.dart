
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonOwnerManualRx/JsonOwnerManualRx.dart';
import 'package:flutter/material.dart';

part 'DeserializeJsonOwnerManualRxWithFactoryFromJsonWidget.g.dart';

class DeserializeJsonOwnerManualRxWithFactoryFromJsonWidget extends EzStatefulWidgetBase {
	DeserializeJsonOwnerManualRxWithFactoryFromJsonWidget({ Key? key }) : super(key: key);

	@override
	DeserializeJsonOwnerManualRxWithFactoryFromJsonWidgetState createState() => DeserializeJsonOwnerManualRxWithFactoryFromJsonWidgetState();
}

@EzWidget()
class DeserializeJsonOwnerManualRxWithFactoryFromJsonWidgetState extends _EzStateBase {
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

		JsonOwnerManualRx owner = JsonOwnerManualRx.factoryFromJson(json);
		print("Owner: ${owner}");
	}
}




