
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZssOverview.g.dart';

class ZssOverview extends EzStatefulWidgetBase {
	@override
	ZssOverviewState createState() => ZssOverviewState();
}

@EzWidget()
class ZssOverviewState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container">
			<color->Colors.pink</color->
		</RULE>
	""";
}




