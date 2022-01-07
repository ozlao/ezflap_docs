
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonAnimal/JsonAnimal.dart';
import 'package:flutter/material.dart';

part 'SerializeJsonAnimalToMapWidget.g.dart';

class SerializeJsonAnimalToMapWidget extends EzStatefulWidgetBase {
	SerializeJsonAnimalToMapWidget({ Key? key }) : super(key: key);

	@override
	SerializeJsonAnimalToMapWidgetState createState() => SerializeJsonAnimalToMapWidgetState();
}

@EzWidget()
class SerializeJsonAnimalToMapWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container />
	""";


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		JsonAnimal animal = JsonAnimal().from(
			id: 42,
			name: "cat",
			iq: 126.7,
		);

		Map<String, dynamic> map = animal.toJsonMap();
		print("Map: ${map}");
	}
}




