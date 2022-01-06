
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';

part 'MatchContainerInRow2.g.dart';

class MatchContainerInRow2 extends EzStatefulWidgetBase {
	@override
	MatchContainerInRow2State createState() => MatchContainerInRow2State();
}

@EzWidget()
class MatchContainerInRow2State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Row>
				<Column>
					<Column>
						<Column>
							<Container>
								<Text>Hello ezFlap! (pink)</Text>
							</Container>
						</Column>
					</Column>
				</Column>
			</Row>
			<Container>
				<Text>Hello ezFlap! (not pink)</Text>
			</Container>
		</Column>
	""";


	/* ZSS (9) **/
	static const _ZSS = """
		<RULE SEL="Row Container">
			<color->Colors.pink</color->
		</RULE>
	""";
}





