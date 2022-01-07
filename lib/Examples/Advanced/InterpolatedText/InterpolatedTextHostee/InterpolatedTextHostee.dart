
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'InterpolatedTextHostee.g.dart';

class InterpolatedTextHostee extends EzStatefulWidgetBase {
	InterpolatedTextHostee({ Key? key }) : super(key: key);

	@override
	InterpolatedTextHosteeState createState() => InterpolatedTextHosteeState();
}

@EzWidget()
class InterpolatedTextHosteeState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Got: {{ text() }}</Text>
		</Container>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("text")
	String _boundText() {
	    return this.tryGetInterpolatedText() ?? "(N/A)";
	}
}




