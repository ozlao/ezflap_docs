
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'ZBuildWithBoundMethod.g.dart';

class ZBuildWithBoundMethod extends EzStatefulWidgetBase {
	@override
	ZBuildWithBoundMethodState createState() => ZBuildWithBoundMethodState();
}

@EzWidget()
class ZBuildWithBoundMethodState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<ZBuild z-build="make()" />
		</Column>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("make")
	Widget _boundMake() {
	    return Text("Built with make()!");
	}
}




