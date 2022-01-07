
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'BoundMethodsZBind1.g.dart';

class BoundMethodsZBind1 extends EzStatefulWidgetBase {
	BoundMethodsZBind1({ Key? key }) : super(key: key);

	@override
	BoundMethodsZBind1State createState() => BoundMethodsZBind1State();
}

@EzWidget()
class BoundMethodsZBind1State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container z-bind:color="getColorByName('pink')">
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* BOUND METHODS (16) **/
	@EzMethod("getColorByName")
	Color _boundGetColorByName(String colorName) {
	    switch (colorName) {
	        case "red": return Colors.red;
	        case "green": return Colors.green;
	        case "blue": return Colors.blue;
	        case "pink": return Colors.pink;
	        default: return Colors.white;
	    }
	}
}




