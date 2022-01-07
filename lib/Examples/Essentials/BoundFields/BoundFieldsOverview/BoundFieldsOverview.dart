
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'BoundFieldsOverview.g.dart';

class BoundFieldsOverview extends EzStatefulWidgetBase {
	BoundFieldsOverview({ Key? key }) : super(key: key);

	@override
	BoundFieldsOverviewState createState() => BoundFieldsOverviewState();
}

@EzWidget()
class BoundFieldsOverviewState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello {{ name }}!</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("name") String _$name = "ezFlap"; // --> this._name
}




