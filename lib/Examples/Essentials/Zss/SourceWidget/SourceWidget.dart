
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'SourceWidget.g.dart';

class SourceWidget extends EzStatefulWidgetBase {
	@override
	SourceWidgetState createState() => SourceWidgetState();
}

@EzWidget()
class SourceWidgetState extends _EzStateBase {
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




