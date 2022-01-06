
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'Specificity.g.dart';

class Specificity extends EzStatefulWidgetBase {
	@override
	SpecificityState createState() => SpecificityState();
}

@EzWidget()
class SpecificityState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container class="withColor pink special">
			<Text>pink, and aligned to the bottom-center</Text>
		</Container>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container.withColor.pink">
			<color->Colors.pink</color->
		</RULE>
		<RULE SEL="Container.withColor">
			<color->Colors.blue</color->
			<alignment->Alignment.centerRight</alignment->
		</RULE>
		<RULE SEL="Container.special">
			<color->Colors.green</color->
			<alignment->Alignment.bottomCenter</alignment->
		</RULE>
	""";
}




