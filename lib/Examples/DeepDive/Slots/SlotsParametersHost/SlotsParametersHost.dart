
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Slots/SlotsParameters/SlotsParameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SlotsParametersHost.g.dart';

class SlotsParametersHost extends EzStatefulWidgetBase {
	SlotsParametersHost({ Key? key }) : super(key: key);

	@override
	SlotsParametersHostState createState() => SlotsParametersHostState();
}

@EzWidget()
class SlotsParametersHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Some animals:</Text>
			<SlotsParameters title="Hello ezFlap!">
				<ZSlotProvider z-scope="paramsFromConsumer">
					<Text>"{{ paramsFromConsumer.animal }}" is an animal.</Text>
				</ZSlotProvider>
			</SlotsParameters>
		</Column>
	""";
}




