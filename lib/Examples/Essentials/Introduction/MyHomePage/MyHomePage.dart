
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ezflap/ezflap.dart';

part 'MyHomePage.g.dart';

class MyHomePage extends EzStatefulWidgetBase {
	@override
	MyHomePageState createState() => MyHomePageState();
}

@EzWidget()
class MyHomePageState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Scaffold>
			<appBar->
				<AppBar z-bind:title="Text(title)" />
			</appBar->
			<body->
				<Center>
					<Column z-bind:mainAxisAlignment="MainAxisAlignment.center">
						<Text>You have pushed the button this many times:</Text>
						<Text z-bind:style="Theme.of(context).textTheme.headline4">
							{{ counter }}
						</Text>
					</Column>
				</Center>
			</body->
			<floatingActionButton->
				<FloatingActionButton
					z-bind:onPressed="incrementCounter"
					z-bind:child="Icon(Icons.add)"
					tooltip="Increment"
				/>
			</floatingActionButton->
		</Scaffold>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("counter") int _$counter = 0; // --> this._counter


	/* BOUND METHODS (16) **/
	@EzMethod("incrementCounter")
	void _boundIncrementCounter() {
	    _counter++;
	}
}




