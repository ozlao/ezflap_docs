
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TransformersChildrenExplicit.g.dart';

class TransformersChildrenExplicit extends EzStatefulWidgetBase {
	@override
	TransformersChildrenExplicitState createState() => TransformersChildrenExplicitState();
}

@EzWidget()
class TransformersChildrenExplicitState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<children->
				<Container />
				<Container />
				<Container>
					<child->
						<Container />
					</child->
				</Container>
				<Container />
			</children->
		</Column>
	""";
}




