
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'PrefixlessKeyAttribute.g.dart';

class PrefixlessKeyAttribute extends EzStatefulWidgetBase {
	PrefixlessKeyAttribute({ Key? key }) : super(key: key);

	@override
	PrefixlessKeyAttributeState createState() => PrefixlessKeyAttributeState();
}

	@EzWidget()
	class PrefixlessKeyAttributeState extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Container key="Hello ezFlap!" />
		""";
	}




