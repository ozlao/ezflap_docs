
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'NamedParameterTagsBoxDecorationBuilder.g.dart';

class NamedParameterTagsBoxDecorationBuilder extends EzStatefulWidgetBase {
	NamedParameterTagsBoxDecorationBuilder({ Key? key }) : super(key: key);

	@override
	State<NamedParameterTagsBoxDecorationBuilder> createState() => NamedParameterTagsBoxDecorationBuilderState();
}

@EzWidget()
class NamedParameterTagsBoxDecorationBuilderState extends _EzStateBase {
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




