
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

part 'MatchByRuntimeClass.g.dart';

class MatchByRuntimeClass extends EzStatefulWidgetBase {
	@override
	MatchByRuntimeClassState createState() => MatchByRuntimeClassState();
}

@EzWidget()
class MatchByRuntimeClassState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container z-attr:class="pinkClassesSet">
				<Text>pink</Text>
			</Container>
			<Container>
				<Text>not pink</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container.withColor.pink">
			<color->Colors.pink</color->
		</RULE>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("pinkClassesSet") late RxSet<String> _$pinkClassesSet;
	// --> this._pinkClassesSet


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._pinkClassesSet = { "withColor" }.obs;

		Future.delayed(Duration(seconds: 3), () {
			this._pinkClassesSet.add("pink");
		});
	}
}





