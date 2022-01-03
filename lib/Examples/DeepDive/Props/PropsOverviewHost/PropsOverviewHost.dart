
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Props/PropsOverview/PropsOverview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'PropsOverviewHost.g.dart';

class PropsOverviewHost extends EzStatefulWidgetBase {
	@override
	PropsOverviewHostState createState() => PropsOverviewHostState();
}

@EzWidget()
class PropsOverviewHostState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<PropsOverview z-bind:backgroundColor="Colors.red" title="Hello ezFlap!" />
			<PropsOverview z-bind:backgroundColor="Colors.yellow" title="A second title!" />
			<PropsOverview z-bind:backgroundColor="Colors.green" />
		</Column>
	""";
}





