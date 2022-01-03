
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'MuExTextsInColumn.g.dart';

class MuExTextsInColumn extends EzStatefulWidgetBase {
	@override
	MuExTextsInColumnState createState() => MuExTextsInColumnState();
}

enum EAnimals { cat, dog, tardigrade }

@EzWidget()
class MuExTextsInColumnState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-if="currentAnimal == EAnimals.cat">Selected animal: Cat.</Text>
			<Text z-if="currentAnimal == EAnimals.dog">Selected animal: Dog.</Text>
			<Text z-if="currentAnimal == EAnimals.tardigrade">Selected animal: Tardigrade.</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("currentAnimal") EAnimals _$currentAnimal = EAnimals.tardigrade; // --> this._currentAnimal
}




