
import 'dart:async';
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'RoutingAnimalProfileWithDefaults.g.dart';

// note: this example is not designed to actually run (because navigation requires
//       additional support that is not currently implemented in this documentation
//       repository)
class RoutingAnimalProfileWithDefaults extends EzStatefulWidgetBase {
	RoutingAnimalProfileWithDefaults({ Key? key }) : super(key: key);

	@override
	RoutingAnimalProfileWithDefaultsState createState() => RoutingAnimalProfileWithDefaultsState();
}

@EzWidget()
class RoutingAnimalProfileWithDefaultsState extends _EzStateBase {
	/* ROUTE PARAMS (1) **/
	@EzRouteParam("animalId") int _$route_animalId = 88;
	// --> this._route_animalId

	@EzRouteParam("animalName") String _$route_animalName = "snail";
	// --> this._route_animalName


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>{{ animalName }} Profile</Text>
			<Text>Animal id: {{ animalId }}</Text>
		</Column>
	""";


	/* LIFECYCLE (20) **/
	@override
	Future<void> hookReady() async {
		print("Animal [${this._route_animalId}]: ${this._route_animalName}");
	}
}




