
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchByRuntimePrefixlessAttribute.g.dart';

class MatchByRuntimePrefixlessAttribute extends EzStatefulWidgetBase {
	@override
	MatchByRuntimePrefixlessAttributeState createState() => MatchByRuntimePrefixlessAttributeState();
}

@EzWidget()
class MatchByRuntimePrefixlessAttributeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container withColor= "pin{{ lastColorLetter }}" >
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


	/* BOUND FIELDS (11) **/
	@EzField("lastColorLetter") late String _$lastColorLetter; // --> this._lastColorLetter


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._lastColorLetter = "e";

		Future.delayed(Duration(seconds: 3), () {
			this._lastColorLetter = "k";
		});
	}
}





