
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'CoreWidgetsEzListTile.g.dart';

class CoreWidgetsEzListTile extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzListTileState createState() => CoreWidgetsEzListTileState();
}

	@EzWidget()
	class CoreWidgetsEzListTileState extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<ListView>
					<EzListTile z-on:tap="onTapped1">
						<leading-><Icon z-bind:0="Icons.arrow_circle_down" /></leading->
						<title-><Text>Item 1. Taps: {{ counter1 }}</Text></title->
					</EzListTile>
					<EzListTile z-on:tap="onTapped2">
						<leading-><Icon z-bind:0="Icons.arrow_circle_up" /></leading->
						<title-><Text>Item 2. Taps: {{ counter2 }}</Text></title->
					</EzListTile>
				</ListView>
			</Column>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("counter1") int _$counter1 = 0; // --> this._counter1
		@EzField("counter2") int _$counter2 = 0; // --> this._counter2


		/* BOUND METHODS (16) **/
		@EzMethod("onTapped1")
		void _boundOnTapped1() {
		    this._counter1++;
		}

		@EzMethod("onTapped2")
		void _boundOnTapped2() {
		    this._counter2++;
		}
	}




