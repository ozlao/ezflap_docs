
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Slots/SlotsSectionWithDefault/SlotsSectionWithDefault.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SlotsSectionWithDefaultHost.g.dart';

class SlotsSectionWithDefaultHost extends EzStatefulWidgetBase {
	@override
	SlotsSectionWithDefaultHostState createState() => SlotsSectionWithDefaultHostState();
}

@EzWidget()
class SlotsSectionWithDefaultHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hosted section:</Text>
			<SlotsSectionWithDefault title="Slots Example!" />
		</Column>
	""";
}




