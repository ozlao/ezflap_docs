
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

part 'ValueSyntaxWithRx.g.dart';

class ValueSyntaxWithRx extends EzStatefulWidgetBase {
	ValueSyntaxWithRx({ Key? key }) : super(key: key);

	@override
	ValueSyntaxWithRxState createState() => ValueSyntaxWithRxState();
}

@EzWidget()
class ValueSyntaxWithRxState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text z-for="animal in animalsList">I have a pet {{ animal }}.</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("animalsList")  RxList<String>  _$animalsList = [ // --> this._animalsList
		"cat",
		"dog",
		"tardigrade",
	].obs;


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		await Future.delayed(Duration(seconds: 3));

		this._animalsList[0] = "Cat";
		this._animalsList[2] = "Tardigrade";
		this._animalsList.removeAt(1);
	}
}




