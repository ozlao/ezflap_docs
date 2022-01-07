
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'Caveat.g.dart';

class Caveat extends EzStatefulWidgetBase {
	Caveat({ Key? key }) : super(key: key);

	@override
	CaveatState createState() => CaveatState();
}

@EzWidget()
class CaveatState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container z-attr:class="curAlignmentClass">
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container.red">
			<color->Colors.red</color->
		</RULE>
		<RULE SEL="Container.green">
			<color->Colors.green</color->
		</RULE>
		<RULE SEL="Container.blue">
			<color->Colors.blue</color->
		</RULE>
		<RULE SEL="Container.pink">
			<color->Colors.pink</color->
		</RULE>
		<RULE SEL="Container.brown">
			<color->Colors.brown</color->
		</RULE>
		<RULE SEL="Container.white">
			<color->Colors.white</color->
		</RULE>
		<RULE SEL="Container.black">
			<color->Colors.black</color->
		</RULE>
		<RULE SEL="Container.yellow">
			<color->Colors.yellow</color->
		</RULE>
		<RULE SEL="Container.cyan">
			<color->Colors.cyan</color->
		</RULE>
		<RULE SEL="Container.grey">
			<color->Colors.grey</color->
		</RULE>
		<RULE SEL="Container.alignedRight">
			<alignment->Alignment.centerRight</alignment->
		</RULE>
		<RULE SEL="Container.alignedLeft">
			<alignment->Alignment.centerLeft</alignment->
		</RULE>
	""";


	/* BOUND FIELDS (11) **/
	// --> this._curAlignmentClass
	@EzField("curAlignmentClass") Set<String> _$curAlignmentClass = {
		"alignedRight"
	};
}




