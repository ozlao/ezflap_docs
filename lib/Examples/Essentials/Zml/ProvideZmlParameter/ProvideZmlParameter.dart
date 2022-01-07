
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'ProvideZmlParameterZml.dart';

part 'ProvideZmlParameter.g.dart';

class ProvideZmlParameter extends EzStatefulWidgetBase {
	ProvideZmlParameter({ Key? key }) : super(key: key);

	@override
	ProvideZmlParameterState createState() => ProvideZmlParameterState();
}

@EzWidget(zml: ProvideZmlParameterZml.ZML)
class ProvideZmlParameterState extends _EzStateBase {

}




