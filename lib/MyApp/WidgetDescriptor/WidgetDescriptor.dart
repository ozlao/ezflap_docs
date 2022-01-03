
import 'package:flutter/material.dart';

class WidgetDescriptor {
	final String key;
	final int groupPriority;
	final String title;
	final Widget Function() funcWidgetFactory;

	const WidgetDescriptor({
		required this.key,
		required this.groupPriority,
		required this.title,
		required this.funcWidgetFactory,
	});
}
