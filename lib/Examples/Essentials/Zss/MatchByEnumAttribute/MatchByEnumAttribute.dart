
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchByEnumAttribute.g.dart';

class MatchByEnumAttribute extends EzStatefulWidgetBase {
	MatchByEnumAttribute({ Key? key }) : super(key: key);

	@override
	MatchByEnumAttributeState createState() => MatchByEnumAttributeState();
}

enum EStatus {
	pending,
	success,
	failure,
}

@EzWidget()
class MatchByEnumAttributeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container z-attr:status="status">
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container[status=EStatus.pending]">
			<color->Colors.yellow</color->
		</RULE>
		<RULE SEL="Container[status=EStatus.success]">
			<color->Colors.green</color->
		</RULE>
		<RULE SEL="Container[status=EStatus.failure]">
			<color->Colors.red</color->
		</RULE>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("status") late EStatus _$status; // --> this._status


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._status = EStatus.pending;

		Future.delayed(Duration(seconds: 3), () {
			this._status = EStatus.success;
		});
	}
}





