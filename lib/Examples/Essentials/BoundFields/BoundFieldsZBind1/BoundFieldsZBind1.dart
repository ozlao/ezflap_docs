
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'BoundFieldsZBind1.g.dart';

class BoundFieldsZBind1 extends EzStatefulWidgetBase {
	BoundFieldsZBind1({ Key? key }) : super(key: key);

	@override
	BoundFieldsZBind1State createState() => BoundFieldsZBind1State();
}

@EzWidget()
class BoundFieldsZBind1State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container z-bind:color="favoriteColor">
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("favoriteColor") Color _$favoriteColor = Colors.pink; // --> this._favoriteColor
}




