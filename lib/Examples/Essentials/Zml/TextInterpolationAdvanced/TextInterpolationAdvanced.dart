
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TextInterpolationAdvanced.g.dart';

class TextInterpolationAdvanced extends EzStatefulWidgetBase {
	@override
	TextInterpolationAdvancedState createState() => TextInterpolationAdvancedState();
}

@EzWidget()
class TextInterpolationAdvancedState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>
			* Newlines are provided using <br/>.
			* Empty lines and spaces before a line are ignored.<br/>
			* &lt;, &gt;, and &amp; are supported.<br/>
			* Multiple spaces             coalesce to a single space.<br/>
			* But &nbsp; is &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; supported.<br/>
		</Text>
	""";
}




