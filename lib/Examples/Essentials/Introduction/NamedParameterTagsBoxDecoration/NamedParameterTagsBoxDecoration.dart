
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'NamedParameterTagsBoxDecoration.g.dart';

class NamedParameterTagsBoxDecoration extends EzStatefulWidgetBase {
	@override
	State<NamedParameterTagsBoxDecoration> createState() => NamedParameterTagsBoxDecorationState();
}

@EzWidget()
class NamedParameterTagsBoxDecorationState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<decoration->
				<BoxDecoration>
					<color->Colors.blue[600]</color->
				</BoxDecoration>
			</decoration->
		</Container>
	""";
}




