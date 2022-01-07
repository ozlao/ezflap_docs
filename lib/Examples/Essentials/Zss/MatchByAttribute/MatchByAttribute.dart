
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part "MatchByAttribute.g.dart";

class MatchByAttribute extends EzStatefulWidgetBase {
	MatchByAttribute({ Key? key }) : super(key: key);

	@override
	MatchByAttributeState createState() => MatchByAttributeState();
}

@EzWidget()
class MatchByAttributeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container withColor="pink">
				<Text>pink</Text>
			</Container>
			<Container>
				<Text>not pink</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container[withColor='pink']">
			<color->Colors.pink</color->
		</RULE>
	""";
}





