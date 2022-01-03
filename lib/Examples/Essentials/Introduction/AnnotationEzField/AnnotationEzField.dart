
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'AnnotationEzField.g.dart';

class AnnotationEzField extends EzStatefulWidgetBase {
	@override
	AnnotationEzFieldState createState() => AnnotationEzFieldState();
}

@EzWidget()
class AnnotationEzFieldState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>{{ counter }}</Text>
	""";


    /* BOUND FIELDS (11) **/
	@EzField("counter") int _$counter = 0; // --> this._counter
}






