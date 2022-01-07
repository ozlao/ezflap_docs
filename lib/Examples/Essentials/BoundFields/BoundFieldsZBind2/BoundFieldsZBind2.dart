
import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'BoundFieldsZBind2.g.dart';

class BoundFieldsZBind2 extends EzStatefulWidgetBase {
	BoundFieldsZBind2({ Key? key }) : super(key: key);

	@override
	BoundFieldsZBind2State createState() => BoundFieldsZBind2State();
}

@EzWidget()
class BoundFieldsZBind2State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container z-bind:color="counter < 10 ? Colors.blue : favoriteColor">
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("favoriteColor") Color _$favoriteColor = Colors.pink; // --> this._favoriteColor
	@EzField("counter") late int _$counter; // --> this._counter


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._counter = 0;
		Timer.periodic(Duration(seconds: 1), (Timer timer) {
			this._counter++;
		});
	}
}




