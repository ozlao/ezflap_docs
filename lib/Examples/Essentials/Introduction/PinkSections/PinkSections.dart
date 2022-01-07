
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'PinkSections.g.dart';

class PinkSections extends EzStatefulWidgetBase {
	PinkSections({ Key? key }) : super(key: key);

	@override
	PinkSectionsState createState() => PinkSectionsState();
}

@EzWidget()
class PinkSectionsState extends _EzStateBase {
	/* PROPS (3) **/
	@EzProp("title") late String _$prop_title; // --> this._prop_title


	/* ZML (8) **/
	static const _ZML = """
		<Scaffold>
			...
		</Scaffold>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("counter") int _$counter = 0; // --> this._counter


	/* BOUND METHODS (16) **/
	@EzMethod("incrementCounter")
	void _boundIncrementCounter() {
	    _counter++;
	}
}




