
import 'package:flutter/material.dart';
import 'package:ezflap/ezflap.dart';
import '../MyHomePage/MyHomePage.dart';

part 'MyApp.g.dart';

class MyApp extends EzStatefulWidgetBase {
	MyApp({ Key? key }) : super(key: key);

	@override
	MyAppState createState() => MyAppState();
}

@EzWidget()
class MyAppState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<MaterialApp title="Flutter Demo" z-bind:theme="ThemeData(primarySwatch: Colors.blue)">
			<home->
				<MyHomePage title="Flutter Demo Home Page" />
			</home->
		</MaterialApp>
	""";
}




