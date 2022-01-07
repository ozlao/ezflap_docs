
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'Comments.g.dart';

class Comments extends EzStatefulWidgetBase {
	Comments({ Key? key }) : super(key: key);

	@override
	CommentsState createState() => CommentsState();
}

@EzWidget()
class CommentsState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>I am not commented out.</Text>
			<_Text>I am commented out.</_Text>
			<Text z-bind:textAlign="TextAlign.left">I am aligned left.</Text>
			<Text _z-bind:textAlign="TextAlign.right" z-bind:textAlign="TextAlign.left">I am also aligned left.</Text>
			<Text _="comment one" _comment="two">I have no named parameters.</Text>
		</Column>
	""";
}




