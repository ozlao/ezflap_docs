
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'InteroperabilitySimpleHostee.g.dart';

class InteroperabilitySimpleHostee extends EzStatefulWidgetBase {
	InteroperabilitySimpleHostee({ Key? key }) : super(key: key);

	@override
	InteroperabilitySimpleHosteeState createState() => InteroperabilitySimpleHosteeState();
}

@EzWidget()
class InteroperabilitySimpleHosteeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello ezFlap!</Text>
		</Container>
	""";
}




