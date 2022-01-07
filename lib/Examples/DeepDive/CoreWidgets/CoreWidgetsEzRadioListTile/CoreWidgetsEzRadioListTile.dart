
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

part 'CoreWidgetsEzRadioListTile.g.dart';

class CoreWidgetsEzRadioListTile extends EzStatefulWidgetBase {
	CoreWidgetsEzRadioListTile({ Key? key }) : super(key: key);

	@override
	CoreWidgetsEzRadioListTileState createState() => CoreWidgetsEzRadioListTileState();
}

@EzWidget()
class CoreWidgetsEzRadioListTileState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Column>
				<EzRadioListTile z-model="favorite" value="cat" caption="Cat" />
				<EzRadioListTile z-model="favorite" value="dog" caption="Dog" />
				<EzRadioListTile z-model="favorite" value="tardigrade" caption="Tardigrade" />
				<Text>Favorite animal: {{ favorite }}</Text>
			</Column>
			
			
			<Column>
				<EzRadioListTile z-model="favorite2" value="cat">
					<Text>Cat</Text>
				</EzRadioListTile>
				<EzRadioListTile z-model="favorite2" value="dog">
					<Text>Dog</Text>
				</EzRadioListTile>
				<EzRadioListTile z-model="favorite2" value="tardigrade">
					<Text>Tardigrade</Text>
				</EzRadioListTile>
				<Text>Second favorite animal: {{ favorite2 }}</Text>
			</Column>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("favorite") String? _$favorite; // --> this._favorite
	@EzField("favorite2") String? _$favorite2; // --> this._favorite2
}




