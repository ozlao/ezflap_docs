
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'NestedRulesExtend.g.dart';

class NestedRulesExtend extends EzStatefulWidgetBase {
	NestedRulesExtend({ Key? key }) : super(key: key);

	@override
	NestedRulesExtendState createState() => NestedRulesExtendState();
}

@EzWidget()
class NestedRulesExtendState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column class="top">
			<Container withColor="true">
				<Text>pink</Text>
			</Container>
			<Container class="alignRight" withColor="true">
				<Text>pink, and aligned to the right</Text>
			</Container>
			<Container class="alignRight">
				<Text>not pink, and NOT aligned to the right</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Column.top Container[withColor='true']">
			<color->Colors.pink</color->
			<RULE TYPE="extend" SEL=".alignRight">
				<alignment->Alignment.centerRight</alignment->
			</RULE>
		</RULE>
	""";
}





