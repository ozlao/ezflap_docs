
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'SourceZssFile.g.dart';

class SourceZssFile extends EzStatefulWidgetBase {
	@override
	SourceZssFileState createState() => SourceZssFileState();
}

@EzWidget()
class SourceZssFileState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello ezFlap!</Text>
		</Container>
	""";
}





