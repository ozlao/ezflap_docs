
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Slots/SlotsSectionAdvanced/SlotsSectionAdvanced.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SlotsSectionAdvancedHost.g.dart';

class SlotsSectionAdvancedHost extends EzStatefulWidgetBase {
	SlotsSectionAdvancedHost({ Key? key }) : super(key: key);

	@override
	SlotsSectionAdvancedHostState createState() => SlotsSectionAdvancedHostState();
}

@EzWidget()
class SlotsSectionAdvancedHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hosted advanced section:</Text>
			<SlotsSectionAdvanced>
				<ZSlotProvider z-name="title">
					<Text>Named Slots Example!</Text>
				</ZSlotProvider>
				<ZSlotProvider z-name="body">
					<Column>
						<Text>This is rendered inside SlotsSection.</Text>
						<Text z-for="idx in indicesList">
							{{ idx }}. This loop is also rendered inside the SlotsSection.
						</Text>
					</Column>
				</ZSlotProvider>
			</SlotsSectionAdvanced>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("indicesList") List<int> _$indicesList = [ 1, 2, 3 ]; // --> this._indicesList
}




