
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'PropsOverview.g.dart';

class PropsOverview extends EzStatefulWidgetBase {
	PropsOverview({ Key? key }) : super(key: key);

	@override
	PropsOverviewState createState() => PropsOverviewState();
}

	@EzWidget()
	class PropsOverviewState extends _EzStateBase {
		/* PROPS (3) **/
		@EzProp("title") String? _$prop_title;
		// --> this._prop_title

		@EzProp("backgroundColor") Color _$prop_backgroundColor = Colors.pink;
		// --> this._prop_backgroundColor


		/* ZML (8) **/
		static const _ZML = """
			<Container z-bind:color="backgroundColor">
				<Text>{{ title ?? "(no title)" }}</Text>
			</Container>
		""";
	}




