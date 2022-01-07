
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'AppliedEffects.g.dart';

class AppliedEffects extends EzStatefulWidgetBase {
	AppliedEffects({ Key? key }) : super(key: key);

	@override
	AppliedEffectsState createState() => AppliedEffectsState();
}

@EzWidget()
class AppliedEffectsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container z-attr:withAntiAlias="someTestLogic">

		</Container>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Container[withAntiAlias=true]">
			<clipBehavior->Clip.antiAlias</clipBehavior->
		</RULE>
	""";


	/* COMPUTED VALUES (14) **/
	@EzComputed("someTestLogic")
	bool _computedSomeTestLogic() {
		/// TODO: add proper logic here
		return true;
	}
}




