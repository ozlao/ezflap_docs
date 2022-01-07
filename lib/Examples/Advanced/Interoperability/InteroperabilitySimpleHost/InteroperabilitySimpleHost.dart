
import 'package:ezflap_docs/Examples/Advanced/Interoperability/InteroperabilitySimpleHostee/InteroperabilitySimpleHostee.dart';
import 'package:flutter/material.dart';

	class InteroperabilitySimpleHost extends StatefulWidget {
		const InteroperabilitySimpleHost({ Key? key }) : super(key: key);

		@override
		InteroperabilitySimpleHostState createState() => InteroperabilitySimpleHostState();
	}

	class InteroperabilitySimpleHostState extends State<InteroperabilitySimpleHost> {
		@override
		Widget build(BuildContext context) {
			return Column(children: [
				Text("In native host. Hostee:"),
				InteroperabilitySimpleHostee(),
			]);
		}
	}




