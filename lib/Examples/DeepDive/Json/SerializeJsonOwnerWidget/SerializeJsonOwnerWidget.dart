
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonAnimal/JsonAnimal.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonOwner/JsonOwner.dart';
import 'package:flutter/material.dart';

part 'SerializeJsonOwnerWidget.g.dart';

class SerializeJsonOwnerWidget extends EzStatefulWidgetBase {
	SerializeJsonOwnerWidget({ Key? key }) : super(key: key);

	@override
	SerializeJsonOwnerWidgetState createState() => SerializeJsonOwnerWidgetState();
}

@EzWidget()
class SerializeJsonOwnerWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container />
	""";


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		JsonOwner owner = JsonOwner().from(
			id: 42,
			name: "Alice",
			favoriteAnimal: JsonAnimal().from(
				id: 37,
				name: "cat",
				iq: 126.7,
			),
			otherAnimalsByIdsMap: {
				"55": JsonAnimal().from(
					id: 55,
					name: "dog",
					iq: 126.699,
				),
				"3112": JsonAnimal().from(
					id: 3112,
					name: "tardigrade",
					iq: 3,
				),
			},
		);

		String json = owner.toJson();
		print("JSON: ${json}");
	}
}




