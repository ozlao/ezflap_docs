
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchByRuntimeAttributeString.g.dart';

class MatchByRuntimeAttributeString extends EzStatefulWidgetBase {
	@override
	MatchByRuntimeAttributeStringState createState() => MatchByRuntimeAttributeStringState();
}

@EzWidget()
class MatchByRuntimeAttributeStringState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container z-attr:withColor="currentColorName">
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
	@EzField("currentColorName") late String _$currentColorName; // --> this._currentColorName


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._currentColorName = "white";

		Future.delayed(Duration(seconds: 3), () {
			this._currentColorName = "pink";
		});
	}
}





