
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'DeclarativeZIf.g.dart';

class DeclarativeZIf extends EzStatefulWidgetBase {
	@override
	DeclarativeZIfState createState() => DeclarativeZIfState();
}

@EzWidget()
class DeclarativeZIfState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>{{ counter }}</Text>
			<Container z-if="counter < 10">
				<Text>The counter is smaller than 10.</Text>
			</Container>
		</Column>
	""";


    /* BOUND FIELDS (11) **/
	@EzField("counter") int _$counter = 0; // --> this._counter
}






