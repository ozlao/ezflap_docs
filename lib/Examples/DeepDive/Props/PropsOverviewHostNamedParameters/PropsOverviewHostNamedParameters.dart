
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Props/PropsOverview/PropsOverview.dart';
import 'package:flutter/material.dart';

part 'PropsOverviewHostNamedParameters.g.dart';

class PropsOverviewHostNamedParameters extends EzStatefulWidgetBase {
	@override
	PropsOverviewHostNamedParametersState createState() => PropsOverviewHostNamedParametersState();
}

@EzWidget()
class PropsOverviewHostNamedParametersState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<PropsOverview title="Hello ezFlap!">
				<backgroundColor->Colors.red</backgroundColor->
			</PropsOverview>
			
			<PropsOverview>
				<backgroundColor->Colors.yellow</backgroundColor->
				<title->"A second title!"</title->
			</PropsOverview>
			
			<PropsOverview z-bind:backgroundColor="Colors.green" />
		</Column>
	""";
}





