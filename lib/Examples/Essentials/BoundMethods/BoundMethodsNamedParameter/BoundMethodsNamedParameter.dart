
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'BoundMethodsNamedParameter.g.dart';

class BoundMethodsNamedParameter extends EzStatefulWidgetBase {
	BoundMethodsNamedParameter({ Key? key }) : super(key: key);

	@override
	BoundMethodsNamedParameterState createState() => BoundMethodsNamedParameterState();
}

@EzWidget()
class BoundMethodsNamedParameterState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<color->
				getFavoriteColor()
			</color->
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("getFavoriteColor")
	Color _boundGetFavoriteColor() {
	    return Colors.pink;
	}
}




