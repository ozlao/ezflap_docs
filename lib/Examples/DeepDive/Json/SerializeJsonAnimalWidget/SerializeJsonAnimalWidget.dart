
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonAnimal/JsonAnimal.dart';
import 'package:flutter/material.dart';

part 'SerializeJsonAnimalWidget.g.dart';

class SerializeJsonAnimalWidget extends EzStatefulWidgetBase {
	@override
	SerializeJsonAnimalWidgetState createState() => SerializeJsonAnimalWidgetState();
}

@EzWidget()
class SerializeJsonAnimalWidgetState extends _EzStateBase {
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

		String json = animal.toJson();
		print("JSON: ${json}");
	}
}




