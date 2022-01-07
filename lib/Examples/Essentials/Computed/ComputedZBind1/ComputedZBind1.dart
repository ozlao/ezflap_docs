
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'ComputedZBind1.g.dart';

class ComputedZBind1 extends EzStatefulWidgetBase {
	ComputedZBind1({ Key? key }) : super(key: key);

	@override
	ComputedZBind1State createState() => ComputedZBind1State();
}

@EzWidget()
class ComputedZBind1State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container z-bind:color="favoriteColor">
			<Text>Hello ezFlap!</Text>
		</Container>
	""";


	/* COMPUTED VALUES (14) **/
	@EzComputed("favoriteColor")
	Color _computedFavoriteColor() {
		return Colors.pink;
	}
}




