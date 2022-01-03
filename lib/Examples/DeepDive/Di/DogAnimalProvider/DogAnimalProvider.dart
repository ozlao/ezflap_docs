
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Di/AnimalProviderBase/AnimalProviderBase.dart';

part "DogAnimalProvider.g.dart";

@EzService(AnimalProviderBase)
class DogAnimalProvider extends _EzServiceBase {
	static i() => _EzServiceBase.i();

	@override
	String getAnimal() {
		return "dog";
	}
}








