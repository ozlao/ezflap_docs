
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'ReactiveAnimalAnnotation.g.dart';

class ReactiveAnimalAnnotation extends EzStatefulWidgetBase {
	ReactiveAnimalAnnotation({ Key? key }) : super(key: key);

	@override
	ReactiveAnimalAnnotationState createState() => ReactiveAnimalAnnotationState();
}

	@EzReactive()
	class _Zoo with _ZooRxMixin {

		@EzValue() late String _$favoriteAnimal; // --> this.favoriteAnimal

		_Zoo(String _favoriteAnimal) {
			this.favoriteAnimal = _favoriteAnimal;
		}
	}

	@EzWidget()
	class ReactiveAnimalAnnotationState extends _EzStateBase {
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

			this._zoo.favoriteAnimal = "dog"; // <-- the UI WILL change.
		}
	}




