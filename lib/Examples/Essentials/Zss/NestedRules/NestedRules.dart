
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'NestedRules.g.dart';

class NestedRules extends EzStatefulWidgetBase {
	NestedRules({ Key? key }) : super(key: key);

	@override
	NestedRulesState createState() => NestedRulesState();
}

@EzWidget()
class NestedRulesState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column class="top">
			<Container>
				<Text>pink</Text>
			</Container>
			<Container>
				<Container class="bottom">
					<Text>pink, and aligned to the right</Text>
				</Container>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Column.top">
			<RULE SEL="Container">
				<color->Colors.pink</color->
				<RULE SEL="Container.bottom">
					<alignment->Alignment.centerRight</alignment->
				</RULE>
			</RULE>
		</RULE>
	""";
}





