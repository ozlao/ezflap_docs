
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Slots/SlotsSectionWithExplicitNamedParameter/SlotsSectionWithExplicitNamedParameter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SlotsSectionWithExplicitNamedParameterHost.g.dart';

class SlotsSectionWithExplicitNamedParameterHost extends EzStatefulWidgetBase {
	@override
	SlotsSectionWithExplicitNamedParameterHostState createState() => SlotsSectionWithExplicitNamedParameterHostState();
}

@EzWidget()
class SlotsSectionWithExplicitNamedParameterHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hosted section:</Text>
			<SlotsSectionWithExplicitNamedParameter title="Slots Example!" />
		</Column>
	""";
}




