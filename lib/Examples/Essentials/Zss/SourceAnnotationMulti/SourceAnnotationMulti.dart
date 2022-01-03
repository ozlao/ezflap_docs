
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'SourceAnnotationMulti1Zss.dart';
import 'SourceAnnotationMulti2Zss.dart';

part 'SourceAnnotationMulti.g.dart';

class SourceAnnotationMulti extends EzStatefulWidgetBase {
	@override
	SourceAnnotationMultiState createState() => SourceAnnotationMultiState();
}

@EzWidget(zsses: [
	SourceAnnotationMulti1Zss.ZSS1,
	SourceAnnotationMulti1Zss.ZSS2,
	SourceAnnotationMulti2Zss.ZSS,
])
class SourceAnnotationMultiState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello ezFlap!</Text>
		</Container>
	""";
}







