
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'ZGroup.g.dart';

class ZGroup extends EzStatefulWidgetBase {
	ZGroup({ Key? key }) : super(key: key);

	@override
	ZGroupState createState() => ZGroupState();
}

@EzWidget()
class ZGroupState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Before groups...</Text>
			<ZGroup z-if="false">
				<Text>This is not rendered.</Text>
				<Text>This is also not rendered.</Text>
			</ZGroup>
			<ZGroup z-show="false">
				<Text>This is rendered but not visible.</Text>
				<Text>This is also rendered but not visible.</Text>
			</ZGroup>
			<ZGroup>
				<Text>This is rendered and visible.</Text>
				<Text>This is also rendered and visible.</Text>
			</ZGroup>
			<Text>After groups...</Text>
		</Column>
	""";
}




