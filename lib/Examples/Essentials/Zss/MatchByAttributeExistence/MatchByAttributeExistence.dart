
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchByAttributeExistence.g.dart';

class MatchByAttributeExistence extends EzStatefulWidgetBase {
	@override
	MatchByAttributeExistenceState createState() => MatchByAttributeExistenceState();
}

@EzWidget()
class MatchByAttributeExistenceState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container withColor="true">
				<Text>pink</Text>
			</Container>
			<Container>
				<Text>not pink</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container[withColor]">
			<color->Colors.pink</color->
		</RULE>
	""";
}





