
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'UsageInLoop.g.dart';

class UsageInLoop extends EzStatefulWidgetBase {
	UsageInLoop({ Key? key }) : super(key: key);

	@override
	UsageInLoopState createState() => UsageInLoopState();
}

class Task {
	final String date;
	final String summary;
	Task(this.date, this.summary);
}

@EzWidget()
class UsageInLoopState extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>Tasks:</Text>
			<Text z-for="task in allTasksList">
			
				{{ getTaskDescription(task) }}
				
			</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("allTasksList") List<Task> _$allTasksList = [ // --> this._allTasksList
		Task("2021-12-06", "Feed dogs"),
		Task("2021-12-06", "Wash dogs"),
		Task("2021-12-07", "Feed cats"),
		Task("2021-12-07", "Wash cats"),
		Task("2021-12-08", "Feed tardigrades"),
		Task("2021-12-08", "Wash tardigrades"),
	];


	/* BOUND METHODS (16) **/

	@EzMethod("getTaskDescription")
	String _boundGetTaskDescription(Task task) {
	    return "Date: ${task.date}, Summary: ${task.summary}";
	}

}




