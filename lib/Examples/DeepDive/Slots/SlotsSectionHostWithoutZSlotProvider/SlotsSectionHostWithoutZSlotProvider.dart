
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Slots/SlotsSection/SlotsSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SlotsSectionHostWithoutZSlotProvider.g.dart';

class SlotsSectionHostWithoutZSlotProvider extends EzStatefulWidgetBase {
	SlotsSectionHostWithoutZSlotProvider({ Key? key }) : super(key: key);

	@override
	SlotsSectionHostWithoutZSlotProviderState createState() => SlotsSectionHostWithoutZSlotProviderState();
}

@EzWidget()
class SlotsSectionHostWithoutZSlotProviderState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Hosted section:</Text>
			<SlotsSection title="Slots Example!">
				<Column>
					<Text>This is rendered inside SlotsSection.</Text>
					<Text z-for="idx in indicesList">
						{{ idx }}. This loop is also rendered inside the SlotsSection.
					</Text>
				</Column>
			</SlotsSection>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("indicesList") List<int> _$indicesList = [ 1, 2, 3 ]; // --> this._indicesList
}




