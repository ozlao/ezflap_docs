
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/AnimalProviderBase/AnimalProviderBase.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/AnimalResolver/AnimalResolver.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/CatAnimalProvider/CatAnimalProvider.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/DogAnimalProvider/DogAnimalProvider.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'DiAnimals.g.dart';

class DiAnimals extends EzStatefulWidgetBase {
	DiAnimals({ Key? key }) : super(key: key);

	@override
	DiAnimalsState createState() => DiAnimalsState();
}

	@EzWidget()
	class DiAnimalsState extends _EzStateBase {
		/* DEPENDENCIES (7) **/
		@EzDIProvider(AnimalResolver) late AnimalProviderBase _$animalProvider;
		// --> this._animalProvider

		// These are only needed because we want to change the selected provider
		// inside this widget:
		@EzDI() late AnimalResolver _animalResolver;
		@EzDI() late CatAnimalProvider _catAnimalProvider;
		@EzDI() late DogAnimalProvider _dogAnimalProvider;


		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<Text>My favorite animal is: {{ animal }}</Text>
				<Row>
					<EzTextButton z-on:pressed="onCat()">
						<Text>Choose Cat</Text>
					</EzTextButton>
					<EzTextButton z-on:pressed="onDog()">
						<Text>Choose Dog</Text>
					</EzTextButton>
				</Row>
			</Column>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("animal") String _$animal = "undecided"; // --> this._animal


		/* BOUND METHODS (16) **/
		@EzMethod("onCat")
		void _boundOnCat() {
			this._animalResolver.setProvider(this._catAnimalProvider);
			this._refreshAnimal();
		}

		@EzMethod("onDog")
		void _boundOnDog() {
			this._animalResolver.setProvider(this._dogAnimalProvider);
			this._refreshAnimal();
		}


		/* PRIVATE METHODS (19) **/
		void _refreshAnimal() {
			this._animal = this._animalProvider.getAnimal();
		}
	}




