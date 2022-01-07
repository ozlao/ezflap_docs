
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'ZBuildWithBuilderStep1Widget.g.dart';

class ZBuildWithBuilderStep1Widget extends EzStatefulWidgetBase {
	ZBuildWithBuilderStep1Widget({ Key? key }) : super(key: key);

	@override
	ZBuildWithBuilderStep1WidgetState createState() => ZBuildWithBuilderStep1WidgetState();
}

@EzWidget()
class ZBuildWithBuilderStep1WidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>In step 1!</Text>
		</Column>
	""";
}




