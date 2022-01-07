
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'BoundFieldsTextInterpolation.g.dart';

class BoundFieldsTextInterpolation extends EzStatefulWidgetBase {
	BoundFieldsTextInterpolation({ Key? key }) : super(key: key);

	@override
	BoundFieldsTextInterpolationState createState() => BoundFieldsTextInterpolationState();
}

@EzWidget()
class BoundFieldsTextInterpolationState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>
				{{ firstName }} {{ lastName }} has {{ numApples + numOranges }} fruits.
			</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("firstName") String _$firstName = "Charles"; // --> this._firstName
	@EzField("lastName") String _$lastName = "Darwin"; // --> this._lastName
	@EzField("numApples") int _$numApples = 4; // --> this._numApples
	@EzField("numOranges") int _$numOranges = 2; // --> this._numOranges
}




