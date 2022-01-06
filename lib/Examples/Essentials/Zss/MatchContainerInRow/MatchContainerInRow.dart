
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchContainerInRow.g.dart';

class MatchContainerInRow extends EzStatefulWidgetBase {
	@override
	MatchContainerInRowState createState() => MatchContainerInRowState();
}

@EzWidget()
class MatchContainerInRowState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Row>
				<Container>
					<Text>Hello ezFlap! (pink)</Text>
				</Container>
			</Row>
			<Container>
				<Text>Hello ezFlap! (not pink)</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Row Container">
			<color->Colors.pink</color->
		</RULE>
	""";
}





