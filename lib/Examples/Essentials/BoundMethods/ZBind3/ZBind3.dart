
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZBind3.g.dart';

class ZBind3 extends EzStatefulWidgetBase {
	@override
	ZBind3State createState() => ZBind3State();
}

@EzWidget()
class ZBind3State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<TextButton z-bind:onPressed="pressed">
				<Text>{{ greeting }} ezFlap!</Text>
			</TextButton>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("greeting") String _$greeting = "Hello"; // --> this._greeting


	/* BOUND METHODS (16) **/
	@EzMethod("pressed")
	void _boundPressed() {
		this._greeting = "Goodbye";
	}
}




