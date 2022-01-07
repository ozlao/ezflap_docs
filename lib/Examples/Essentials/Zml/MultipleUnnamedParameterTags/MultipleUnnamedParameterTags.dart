
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'MultipleUnnamedParameterTags.g.dart';

class MultipleUnnamedParameterTags extends EzStatefulWidgetBase {
	MultipleUnnamedParameterTags({ Key? key }) : super(key: key);

	@override
	MultipleUnnamedParameterTagsState createState() => MultipleUnnamedParameterTagsState();
}

@EzWidget()
class MultipleUnnamedParameterTagsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container></Container>
			<Container>
				<Row>
					<Container />
					<Container />
				</Row>
			</Container>
			<Row />
			<Column />
			<Column>
			
			</Column>
			<Column />
		</Column>
	""";
}




