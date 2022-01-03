
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'WatchesOverview.g.dart';

class WatchesOverview extends EzStatefulWidgetBase {
	@override
	WatchesOverviewState createState() => WatchesOverviewState();
}

@EzWidget()
class WatchesOverviewState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Text>Full name: {{ fullName }}</Text>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("fullName") late String _$fullName; // --> this._fullName
	@EzField("firstName") String _$firstName = "John"; // --> this._firstName
	@EzField("lastName") String _$lastName = "Doe"; // --> this._lastName


	/* WATCHES (17) **/
	@EzWatch("firstName")
	void _watchFirstName(String newValue, String oldValue) {
	    print("'${oldValue}' changed to '${newValue}'");
	    this._updateFullName();
	}


	/* PRIVATE METHODS (19) **/
	void _updateFullName() {
		this._fullName = "${this._firstName} ${this._lastName}";
	}


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._updateFullName();
		Future.delayed(Duration(seconds: 3), () => this._firstName = "Jane");
	}
}




