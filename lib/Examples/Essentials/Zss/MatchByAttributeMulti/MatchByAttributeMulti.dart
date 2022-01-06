
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchByAttributeMulti.g.dart';

class MatchByAttributeMulti extends EzStatefulWidgetBase {
	@override
	MatchByAttributeMultiState createState() => MatchByAttributeMultiState();
}

@EzWidget()
class MatchByAttributeMultiState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container withColor="pink" colorIsActive="true">
				<Text>pink</Text>
			</Container>
			<Container withColor="pink">
				<Text>not pink</Text>
			</Container>
			<Container colorIsActive="true">
				<Text>not pink</Text>
			</Container>
			<Container>
				<Text>not pink</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container[colorIsActive='true'][withColor='pink']">
			<color->Colors.pink</color->
		</RULE>
	""";
}





