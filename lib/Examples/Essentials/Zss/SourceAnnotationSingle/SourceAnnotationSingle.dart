
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:ezflap_docs/Examples/Essentials/Zss/SourceAnnotationSingle/SourceAnnotationSingleZss.dart';

part 'SourceAnnotationSingle.g.dart';

class SourceAnnotationSingle extends EzStatefulWidgetBase {
	@override
	SourceAnnotationSingleState createState() => SourceAnnotationSingleState();
}

@EzWidget(zss: SourceAnnotationSingleZss.ZSS)
class SourceAnnotationSingleState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text>Hello ezFlap!</Text>
		</Container>
	""";
}







