
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'SourceZssFile.g.dart';

class SourceZssFile extends EzStatefulWidgetBase {
	SourceZssFile({ Key? key }) : super(key: key);

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





