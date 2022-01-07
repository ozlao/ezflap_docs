
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'PrefixlessAttributes.g.dart';

class PrefixlessAttributes extends EzStatefulWidgetBase {
	PrefixlessAttributes({ Key? key }) : super(key: key);

	@override
	PrefixlessAttributesState createState() => PrefixlessAttributesState();
}

@EzWidget()
class PrefixlessAttributesState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<MaterialApp title="Hello ezFlap!" />
	""";
}




