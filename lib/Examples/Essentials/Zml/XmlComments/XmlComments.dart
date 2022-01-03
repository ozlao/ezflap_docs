
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'XmlComments.g.dart';

class XmlComments extends EzStatefulWidgetBase {
	@override
	_EzStateBase createState() => XmlCommentsState();
}

@EzWidget()
class XmlCommentsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>I am not commented out.</Text>
			<!--
			<Text>I am commented out.</Text>
			-->
			<Text>I am also not commented out.</Text>
		</Column>
	""";
}




