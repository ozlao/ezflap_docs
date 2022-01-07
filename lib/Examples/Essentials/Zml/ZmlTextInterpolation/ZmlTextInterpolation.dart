
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'ZmlTextInterpolation.g.dart';

class ZmlTextInterpolation extends EzStatefulWidgetBase {
	ZmlTextInterpolation({ Key? key }) : super(key: key);

	@override
	ZmlTextInterpolationState createState() => ZmlTextInterpolationState();
}

@EzWidget()
class ZmlTextInterpolationState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<MaterialApp title="Hello {{ 'john'.toUpperCase() }}!">
			<home->
				<Text>A day has approximately {{ 24 * 60 * 60 }} seconds in it.</Text>
			</home->
		</MaterialApp>
	""";
}




