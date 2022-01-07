
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'TestingRouteParams.g.dart';

class TestingRouteParams extends EzStatefulWidgetBase {
	TestingRouteParams({ Key? key }) : super(key: key);

	@override
	TestingRouteParamsState createState() => TestingRouteParamsState();
}

@EzWidget()
class TestingRouteParamsState extends _EzStateBase {
	/* ROUTE PARAMS (1) **/
	@EzRouteParam("profileId") late int _$route_profileId; // --> this._route_profileId
	@EzRouteParam("category") late String _$route_category; // --> this._route_category


	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Profile id: {{ profileId }}</Text>
			<Text>Category: {{ category }}</Text>
		</Column>
	""";
}




