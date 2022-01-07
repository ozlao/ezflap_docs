
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

part 'ReactiveAnimalRx.g.dart';

class ReactiveAnimalRx extends EzStatefulWidgetBase {
	ReactiveAnimalRx({ Key? key }) : super(key: key);

	@override
	ReactiveAnimalRxState createState() => ReactiveAnimalRxState();
}

	class _Zoo {

		late  Rx<String>  favoriteAnimal;

		_Zoo(String _favoriteAnimal) {

			this.favoriteAnimal =  Rx<String>(_favoriteAnimal);

		}
	}

	@EzWidget()
	class ReactiveAnimalRxState extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Text>My favorite animal is: {{ zoo.favoriteAnimal.value }}.</Text>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("zoo") _Zoo _$zoo = _Zoo("cat"); // --> this._zoo


		/* LIFECYCLE (20) **/
		@override
		Future<void> hookReady() async {
			await Future.delayed(Duration(seconds: 3));

			this._zoo.favoriteAnimal.value = "dog"; // <-- the UI WILL change.
		}
	}




