
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'MatchByClassMulti.g.dart';

class MatchByClassMulti extends EzStatefulWidgetBase {
	@override
	MatchByClassMultiState createState() => MatchByClassMultiState();
}

@EzWidget()
class MatchByClassMultiState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container class="withColor pink">
				<Text>pink</Text>
			</Container>
			<Container class="pink withColor">
				<Text>pink</Text>
			</Container>
			<Container class="pink withColor hello world">
				<Text>pink</Text>
			</Container>
			<Container>
				<Text>NOT pink</Text>
			</Container>
			<Container class="withColor">
				<Text>NOT pink</Text>
			</Container>
			<Container class="pinkColor">
				<Text>NOT pink</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container.withColor.pink">
			<color->Colors.pink</color->
		</RULE>
	""";
}





