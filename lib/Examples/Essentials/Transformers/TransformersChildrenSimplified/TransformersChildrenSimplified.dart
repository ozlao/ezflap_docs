
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TransformersChildrenSimplified.g.dart';

class TransformersChildrenSimplified extends EzStatefulWidgetBase {
	TransformersChildrenSimplified({ Key? key }) : super(key: key);

	@override
	TransformersChildrenSimplifiedState createState() => TransformersChildrenSimplifiedState();
}

@EzWidget()
class TransformersChildrenSimplifiedState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container />
			<Container />
			<Container>
				<Container />
			</Container>
			<Container />
		</Column>
	""";
}




