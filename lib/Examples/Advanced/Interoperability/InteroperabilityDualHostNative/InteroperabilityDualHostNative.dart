
import 'package:ezflap_docs/Examples/Advanced/Interoperability/InteroperabilityDualHostee/InteroperabilityDualHostee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InteroperabilityDualHostNative extends StatefulWidget {
	const InteroperabilityDualHostNative({ Key? key }) : super(key: key);

	@override
	InteroperabilityDualHostNativeState createState() => InteroperabilityDualHostNativeState();
}

class InteroperabilityDualHostNativeState extends State<InteroperabilityDualHostNative> {
	@override
	Widget build(BuildContext context) {
		return Column(children: [
			Text("In native host. Hostee:"),
			InteroperabilityDualHostee(
				title: "Hostee Title!",
				incrementCallback: () => print("Incremented!"),
				counterGetter: () => _counter.value,
				counterSetter: (int value) => _counter.value = value,
			),
		]);
	}

	Rx<int> _counter = 0.obs;
}




