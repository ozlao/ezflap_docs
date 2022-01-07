
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'PropsSyntaxNullable.g.dart';

class PropsSyntaxNullable extends EzStatefulWidgetBase {
	PropsSyntaxNullable({ Key? key }) : super(key: key);

	@override
	PropsSyntaxNullableState createState() => PropsSyntaxNullableState();
}

@EzWidget()
class PropsSyntaxNullableState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") String? _$prop_title; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>{{ title ?? "(no title)" }}</Text>
		</Container>
	""";
}




