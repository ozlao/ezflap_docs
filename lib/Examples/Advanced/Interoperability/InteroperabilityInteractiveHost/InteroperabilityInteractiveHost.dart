
import 'package:ezflap_docs/Examples/Advanced/Interoperability/InteroperabilityInteractiveHostee/InteroperabilityInteractiveHostee.dart';

	import 'package:flutter/material.dart';
	import 'package:get/get.dart';

	class InteroperabilityInteractiveHost extends StatefulWidget {
		const InteroperabilityInteractiveHost({ Key? key }) : super(key: key);

		@override
		InteroperabilityInteractiveHostState createState() => InteroperabilityInteractiveHostState();
	}

	class InteroperabilityInteractiveHostState extends State<InteroperabilityInteractiveHost> {
		@override
		Widget build(BuildContext context) {
			return Column(children: [
				Text("In native host. Hostee:"),
				InteroperabilityInteractiveHostee(
					title: "Hostee Title!",
					incrementCallback: () => print("Incremented!"),
					counterGetter: () => _counter.value,
					counterSetter: (int value) => _counter.value = value,
				),
			]);
		}

		Rx<int> _counter = 0.obs;
	}




