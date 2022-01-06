
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'BoundMethodsZBind2.g.dart';

class BoundMethodsZBind2 extends EzStatefulWidgetBase {
	@override
	BoundMethodsZBind2State createState() => BoundMethodsZBind2State();
}

	@EzWidget()
	class BoundMethodsZBind2State extends _EzStateBase {
		/* ZML (8) **/
		static const _ZML = """
			<Column>
				<Container z-for="curIdx in indexesList" z-bind:color="getColorByIndex(curIdx)">
					<Text>Hello ezFlap!</Text>
				</Container>
			</Column>
		""";


		/* BOUND FIELDS (11) **/
		@EzField("indexesList") List<int> _$indexesList = List<int>.generate(20, (i) => i + 1);
		// --> this._indexesList

		@EzField("colorsList") List<Color> _$colorsList = [ Colors.red, Colors.green, Colors.blue ];
		// --> this._colorsList


		/* BOUND METHODS (16) **/
		@EzMethod("getColorByIndex")
		Color _boundGetColorByIndex(int idx) {
			int len = this._colorsList.length;
			return this._colorsList[idx % len];
		}
	}




