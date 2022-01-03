
import 'dart:convert';
import 'package:ezflap/ezflap.dart';

part "JsonAnimal.g.dart";

@EzJson()
class JsonAnimal extends _JsonAnimalBase {
	@EzValue() late int id;
	@EzValue() late String name;
	@EzValue() double? iq;

	@override
	String toString() {
		return """\n
			Animal (${id})
			name=${name}
			iq=${iq}
		""";
	}
}





