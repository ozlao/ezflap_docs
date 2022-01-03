
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/Advanced/WidgetInheritance/ParentWidget/ParentWidget.dart';
import 'package:flutter/material.dart';

part 'MiddleWidget.g.dart';

@EzWidget(extend: ParentWidgetState)
abstract class MiddleWidgetState<T extends EzStatefulWidgetBase> extends _EzStateBase<T> {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Middle widget stuff...</Text>
			<ZInheritingWidget />
		</Column>
	""";
}




