
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/Examples/DeepDive/Json/JsonDeepCollections/JsonDeepCollections.dart';
import 'package:flutter/material.dart';

part 'SerializeJsonDeepCollectionsWidget.g.dart';

class SerializeJsonDeepCollectionsWidget extends EzStatefulWidgetBase {
	SerializeJsonDeepCollectionsWidget({ Key? key }) : super(key: key);

	@override
	SerializeJsonDeepCollectionsWidgetState createState() => SerializeJsonDeepCollectionsWidgetState();
}

@EzWidget()
class SerializeJsonDeepCollectionsWidgetState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Container />
	""";


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		JsonDeepCollections deep = JsonDeepCollections().from(
			deepMap: {
				"itemA1": {
					[
						{
							"itemB1": {
								"itemC1": {
									"itemD1": { "itemE1": 42, "itemE2": 17, "itemE3": 88 },
									"itemD2": { "itemE1": 142, "itemE2": 117, "itemE3": 188 },
								},
								"itemC2": {
									"itemD1": { "itemE1": 242, "itemE2": 217, "itemE3": 288 },
									"itemD2": { "itemE1": 342, "itemE2": 317, "itemE3": 388 },
								}
							}
						}
					]
				},
				"itemA2": {
					[
						{
							"itemB1": {
								"itemC1": {
									"itemD1": { "itemE1": 442, "itemE2": 417, "itemE3": 488 },
									"itemD2": { "itemE1": 542, "itemE2": 517, "itemE3": 588 },
								},
								"itemC2": {
									"itemD1": { "itemE1": 642, "itemE2": 617, "itemE3": 688 },
									"itemD2": { "itemE1": 742, "itemE2": 717, "itemE3": 788 },
								}
							}
						}
					]
				}
			}
		);

		String json = deep.toJson();
		print("JSON: ${json}");
	}
}




