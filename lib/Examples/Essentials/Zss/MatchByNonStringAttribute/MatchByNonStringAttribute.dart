
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchByNonStringAttribute.g.dart';

class MatchByNonStringAttribute extends EzStatefulWidgetBase {
	MatchByNonStringAttribute({ Key? key }) : super(key: key);

	@override
	MatchByNonStringAttributeState createState() => MatchByNonStringAttributeState();
}

@EzWidget()
class MatchByNonStringAttributeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container z-attr:withColor="dartRedColor">
				<Text>pink</Text>
			</Container>
			<Container z-attr:withColor="Colors.red">
				<Text>pink</Text>
			</Container>
			<Container z-attr:withColor="Colors.blue">
				<Text>not pink</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container[withColor=Colors.red]">
			<color->Colors.pink</color->
		</RULE>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("dartRedColor") Color _$dartRedColor = Colors.red; // --> this._dartRedColor
}





