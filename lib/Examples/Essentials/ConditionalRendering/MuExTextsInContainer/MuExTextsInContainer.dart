
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'MuExTextsInContainer.g.dart';

class MuExTextsInContainer extends EzStatefulWidgetBase {
	MuExTextsInContainer({ Key? key }) : super(key: key);

	@override
	MuExTextsInContainerState createState() => MuExTextsInContainerState();
}

enum EAnimals { cat, dog, tardigrade }

@EzWidget()
class MuExTextsInContainerState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container>
			<Text z-if="currentAnimal == EAnimals.cat">Selected animal: Cat.</Text>
			<Text z-if="currentAnimal == EAnimals.dog">Selected animal: Dog.</Text>
			<Text z-if="currentAnimal == EAnimals.tardigrade">Selected animal: Tardigrade.</Text>
		</Container>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("currentAnimal") EAnimals _$currentAnimal = EAnimals.tardigrade; // --> this._currentAnimal
}




