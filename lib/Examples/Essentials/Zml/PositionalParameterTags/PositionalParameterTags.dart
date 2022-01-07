
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'PositionalParameterTags.g.dart';

class PositionalParameterTags extends EzStatefulWidgetBase {
	PositionalParameterTags({ Key? key }) : super(key: key);

	@override
	PositionalParameterTagsState createState() => PositionalParameterTagsState();
}

@EzWidget()
class PositionalParameterTagsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<child->
				<Text>
					<:0->"Hello ezFlap!"</:0->
				</Text>
			</child->
		</Container>
	""";
}




