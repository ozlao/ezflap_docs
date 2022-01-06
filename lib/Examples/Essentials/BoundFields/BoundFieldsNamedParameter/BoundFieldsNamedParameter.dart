
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'BoundFieldsNamedParameter.g.dart';

class BoundFieldsNamedParameter extends EzStatefulWidgetBase {
	@override
	BoundFieldsNamedParameterState createState() => BoundFieldsNamedParameterState();
}

@EzWidget()
class BoundFieldsNamedParameterState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<color->
				favoriteColor
			</color->
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("favoriteColor") Color _$favoriteColor = Colors.pink; // --> this._favoriteColor
}




