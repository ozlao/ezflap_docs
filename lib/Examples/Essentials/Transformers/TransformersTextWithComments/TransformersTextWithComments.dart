
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'TransformersTextWithComments.g.dart';

class TransformersTextWithComments extends EzStatefulWidgetBase {
	@override
	TransformersTextWithCommentsState createState() => TransformersTextWithCommentsState();
}

@EzWidget()
class TransformersTextWithCommentsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>
			Hello {{ "First" + "<!--" + "all of this will be removed" "-->" + "Last" }} World
		</Text>
	""";
}




