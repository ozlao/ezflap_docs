
import 'package:ezflap/ezflap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

part 'FormatAndFilterReactive1.g.dart';

class FormatAndFilterReactive1 extends EzStatefulWidgetBase {
	@override
	FormatAndFilterReactive1State createState() => FormatAndFilterReactive1State();
}

class Task {
	final String date;
	final String summary;
	Task(this.date, this.summary);
}

@EzWidget()
class FormatAndFilterReactive1State extends _EzStateBase {
	/* ZML (8) **/
	static const _ZML = """
		<Column>
			<Text>You have a total of {{ totalTasks }} tasks.</Text>
			<Text>Tasks today:</Text>
			<Text z-for="task in todayTasksList">{{ task.summary }}</Text>
		</Column>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("allTasksList") late List<Task> _$allTasksList; // --> this._allTasksList


	/* COMPUTED VALUES (14) **/
	@EzComputed("totalTasks")
	String _computedTotalTasks() {
		int len = this._allTasksList.length;
		return (len == 0 ? "zero :-(" : "${len}");
	}

	@EzComputed("todayTasksList")
	List<Task> _computedTodayTasksList() {
		String today = DateFormat("y-MM-dd").format(DateTime.now());
		return this._allTasksList.where((task) => task.date == today).toList();
	}


	/* LIFECYCLE (20) **/
	void hookInitState() {
		this._allTasksList = [
			Task("2021-12-06", "Feed dogs"),
			Task("2021-12-06", "Wash dogs"),
			Task("2021-12-07", "Feed cats"),
			Task("2021-12-07", "Wash cats"),
			Task("2021-12-08", "Feed tardigrades"),
			Task("2021-12-08", "Wash tardigrades"),
		];

		Future.delayed(Duration(seconds: 3), () {
			this._allTasksList = [
				Task("2021-12-06", "Train dogs"),
				Task("2021-12-07", "Train cats"),
				Task("2021-12-08", "Train tardigrades"),
			];
		});
	}
}




