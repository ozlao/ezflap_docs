
import 'dart:async';

import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ComputedZBind2.g.dart';

class ComputedZBind2 extends EzStatefulWidgetBase {
	@override
	ComputedZBind2State createState() => ComputedZBind2State();
}

	@EzWidget()
	class ComputedZBind2State extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Container z-bind:color="counter < 10 ? Colors.blue : favoriteColor">
				<Text>Hello ezFlap!</Text>
			</Container>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("counter") late int _$counter; // --> this._counter


		/* COMPUTED VALUES (14) **/
		@EzComputed("favoriteColor")
		Color _computedFavoriteColor() {
			return Colors.pink;
		}


		/* LIFECYCLE (20) **/
		@override
		void hookInitState() {
			this._counter = 0;
			Timer.periodic(new Duration(seconds: 1), (Timer timer) {
				this._counter++;
			});
		}
	}




