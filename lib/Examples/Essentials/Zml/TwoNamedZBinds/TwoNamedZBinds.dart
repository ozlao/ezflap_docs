
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TwoNamedZBinds.g.dart';

class TwoNamedZBinds extends EzStatefulWidgetBase {
	@override
	TwoNamedZBindsState createState() => TwoNamedZBindsState();
}

@EzWidget()
class TwoNamedZBindsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container
			z-bind:clipBehavior="Clip.antiAlias"
			z-bind:color="Color(0xFF012345)"
		/>
	""";
}




