
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'UnreactiveAnimal.g.dart';

class UnreactiveAnimal extends EzStatefulWidgetBase {
	UnreactiveAnimal({ Key? key }) : super(key: key);

	@override
	UnreactiveAnimalState createState() => UnreactiveAnimalState();
}

class _Zoo {
	late String favoriteAnimal;

	_Zoo(this.favoriteAnimal);
}

@EzWidget()
class UnreactiveAnimalState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>My favorite animal is: {{ zoo.favoriteAnimal }}.</Text>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("zoo") _Zoo _$zoo = _Zoo("cat"); // --> this._zoo


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		await Future.delayed(Duration(seconds: 3));

		this._zoo.favoriteAnimal = "dog"; // <-- the UI will NOT change.
	}
}




