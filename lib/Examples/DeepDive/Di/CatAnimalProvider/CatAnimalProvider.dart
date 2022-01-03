
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/AnimalProviderBase/AnimalProviderBase.dart';

part "CatAnimalProvider.g.dart";

@EzService(AnimalProviderBase)
class CatAnimalProvider extends _EzServiceBase {
	static i() => _EzServiceBase.i();

	@override
	String getAnimal() {
		return "cat";
	}
}



