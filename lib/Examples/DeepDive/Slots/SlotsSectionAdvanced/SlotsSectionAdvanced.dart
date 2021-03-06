
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'SlotsSectionAdvanced.g.dart';

class SlotsSectionAdvanced extends EzStatefulWidgetBase {
	SlotsSectionAdvanced({ Key? key }) : super(key: key);

	@override
	SlotsSectionAdvancedState createState() => SlotsSectionAdvancedState();
}

@EzWidget()
class SlotsSectionAdvancedState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Container z-bind:color="Colors.pink">
				<ZSlotConsumer z-name="title" />
			</Container>
			<Container z-bind:color="Colors.yellow">
				<ZSlotConsumer z-name="body" />
			</Container>
		</Column>
	""";
}




