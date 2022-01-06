
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchByClass.g.dart';

class MatchByClass extends EzStatefulWidgetBase {
	@override
	MatchByClassState createState() => MatchByClassState();
}

@EzWidget()
class MatchByClassState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container class="pinkColor">
				<Text>Hello ezFlap! (pink)</Text>
			</Container>
			<Container>
				<Text>Hello ezFlap! (not pink)</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container.pinkColor">
			<color->Colors.pink</color->
		</RULE>
	""";
}





