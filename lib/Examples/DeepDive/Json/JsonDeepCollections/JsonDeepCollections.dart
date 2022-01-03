
import 'dart:convert';
import 'package:ezflap/ezflap.dart';

part "JsonDeepCollections.g.dart";

@EzJson()
class JsonDeepCollections extends _JsonDeepCollectionsBase {
	@EzValue() Map<String, Set<List<Map<String, Map<String, Map<String, Map<String, int>>>>>>>? deepMap;

	@override
	String toString() {
		return "deepMap: ${deepMap}";
	}
}





