
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ZFor.g.dart';

class ZFor extends EzStatefulWidgetBase {
	@override
	ZForState createState() => ZForState();
}

@EzWidget()
class ZForState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="colorName in colorsList" >
				{{ colorName }}
			</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("colorsList") List<String> _$colorsList = [ "Red", "Green", "Blue" ]; // --> this._colorsList
}




