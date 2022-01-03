
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzFloatingActionButton.g.dart';

// note: this example is not designed to actually run (because navigation requires
//       additional support that is not currently implemented in this documentation
//       repository)
class CoreWidgetsEzFloatingActionButton extends EzStatefulWidgetBase {
	@override
	CoreWidgetsEzFloatingActionButtonState createState() => CoreWidgetsEzFloatingActionButtonState();
}

@EzWidget()
class CoreWidgetsEzFloatingActionButtonState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<MaterialApp
			title="Hello ezFlap!"
			z-bind:theme="ThemeData(primarySwatch: Colors.blue)"
		>
			<home->
				<Scaffold>
					<floatingActionButton->
						<EzFloatingActionButton
							z-on:pressed="onClickedFAB()"
							z-bind:backgroundColor="Colors.orange"
						>
							<Icon z-bind:0="Icons.pets" />
						</EzFloatingActionButton>
					</floatingActionButton->
				</Scaffold>
			</home->
		</MaterialApp>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("onClickedFAB")
	void _boundOnClickedFAB() {
	    print("FABulous!");
	}
}




