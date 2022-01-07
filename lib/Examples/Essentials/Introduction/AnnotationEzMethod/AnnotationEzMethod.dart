
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'AnnotationEzMethod.g.dart';

class AnnotationEzMethod extends EzStatefulWidgetBase {
	AnnotationEzMethod({ Key? key }) : super(key: key);

	@override
	AnnotationEzMethodState createState() => AnnotationEzMethodState();
}

@EzWidget()
class AnnotationEzMethodState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>{{ counter }}</Text>
			<TextButton z-bind:onPressed="incrementCounter">
				<Text>Increase to {{ calculateNextCounter() }}</Text>
			</TextButton>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("counter") int _$counter = 0; // --> this._counter


	/* BOUND METHODS (16) **/
	@EzMethod("incrementCounter")
	void _boundIncrementCounter() {
		_counter++;
	}

	@EzMethod("calculateNextCounter")
	int _boundCalculateNextCounter() {
		return _counter + 1;
	}
}






