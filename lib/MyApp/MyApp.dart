
import 'package:ezflap/ezflap.dart';
import 'package:ezflap_docs/MyApp/MyApp.zss.dart';
import 'package:ezflap_widgets/ezflap_widgets.dart';
import 'package:flutter/material.dart';

import 'MyApp.zss.dart';
import 'MyAppWidgetDescriptors.dart';
import 'WidgetDescriptor/WidgetDescriptor.dart';

part "MyApp.g.dart";

class MyApp extends EzStatefulWidgetBase {
	@override
	MyAppState createState() => MyAppState();
}

@EzWidget(zss: MyAppZss.ZSS)
class MyAppState extends _EzStateBase {
	/* PUBLIC METHODS (4) **/
	int getNumWidgets() {
		return this._arrWidgetDescriptors.length;
	}

	String getWidgetKeyByIdx(idx) {
		return this._arrWidgetDescriptors[idx].key;
	}

	/* CONSTS (6) **/
	static List<WidgetDescriptor> _WIDGET_DESCRIPTORS = MyAppWidgetDescriptors.WIDGET_DESCRIPTORS;


	/* ZML (8) **/
	static const _ZML = """
		<MaterialApp
			title="Examples Player"
			z-bind:theme="ThemeData(primarySwatch: Colors.blue)"
			z-bind:debugShowCheckedModeBanner="false"
		>
			<home->
				<Scaffold>
					<body->
						<SingleChildScrollView>
							<Padding z-bind:padding="EdgeInsets.all(10.0)">
								<Column>
									<Row class="spaceBetween">
										<EzIconButton
											z-on:pressed="previous()"
											z-bind:isDisabled="!canGoBack"
											z-bind:icon="Icon(Icons.arrow_back_ios)"
										/> 
										<Expanded>
											<EzTextField z-on:changed="onChangedSearch()" z-model="searchText" class="searchField" />
										</Expanded>
										<EzIconButton z-key="next"
											z-on:pressed="next()"
											z-bind:isDisabled="!canGoForward"
											z-bind:icon="Icon(Icons.arrow_forward_ios)"
										/>
									</Row>				
														
									<Divider z-bind:height="30" z-bind:thickness="2" />
									
									<ZGroup z-if="arrWidgetDescriptors.isNotEmpty">
										<Container z-if="arrWidgetDescriptors.isNotEmpty" z-bind:height="300">
											<SingleChildScrollView>
												<Column>
													<EzRadioListTile z-model="value"
														z-for="item in arrWidgetDescriptors"
														z-bind:value="item.key"
														z-bind:caption="item.title"
													/>
												</Column>
											</SingleChildScrollView>
										</Container>
										
										<Divider z-bind:height="30" z-bind:thickness="10" />
										
										<ZBuild z-builder="widgetFactory" />
									</ZGroup>
									<Container z-if="arrWidgetDescriptors.isEmpty">
										<Text>No examples found!</Text>
									</Container>
								</Column>
							</Padding>
						</SingleChildScrollView>
					</body->
				</Scaffold>
			</home->
		</MaterialApp>
	""";


	/* BOUND FIELDS (11) **/
	@EzField("value") String? _$value; // --> this._value;
	@EzField("searchText") String _$searchText = ""; // --> this._searchText
	@EzField("arrWidgetDescriptors") late List<WidgetDescriptor> _$arrWidgetDescriptors; // --> this._arrWidgetDescriptors


	/* COMPUTED PROPERTIES (14) **/
	@EzComputed("widgetFactory")
	Widget Function(BuildContext)? _computedWidgetFactory() {
		int? idx = this._tryGetWidgetDescriptorIdx();
		if (idx == null) {
			return null;
		}

		WidgetDescriptor widgetDescriptor = this._arrWidgetDescriptors[idx];
		return (_) => widgetDescriptor.funcWidgetFactory();
	}

	@EzComputed("canGoBack")
	bool _computedCanGoBack() {
		int? currentIdx = this._tryGetWidgetDescriptorIdx();
		return (currentIdx != null && currentIdx > 0);
	}

	@EzComputed("canGoForward")
	bool _computedCanGoForward() {
		int? currentIdx = this._tryGetWidgetDescriptorIdx();
		int maxIdx = _getArrWidgetDescriptorsLength() - 1;
		return (currentIdx != null && currentIdx < maxIdx);
	}


	/* BOUND METHODS (16) **/
	@EzMethod("previous")
	void _boundPrevious() {
		if (!this._cachedComputedCanGoBack) {
			return;
		}

		int idx = this._tryGetWidgetDescriptorIdx()!;
		this._value = this._arrWidgetDescriptors[idx - 1].key;
	}

	@EzMethod("next")
	void _boundNext() {
		if (!this._cachedComputedCanGoForward) {
			return;
		}

		int idx = this._tryGetWidgetDescriptorIdx()!;
		this._value = this._arrWidgetDescriptors[idx + 1].key;
	}

	@EzMethod("onChangedSearch")
	void _boundOnChangedSearch() {
		this._refreshWidgetsList();
	}


	/* PRIVATE METHODS (19) **/
	int? _tryGetWidgetDescriptorIdx() {
		int idx = this._arrWidgetDescriptors.indexWhere((item) => item.key == this._value);
		if (idx == -1) {
			return null;
		}
		return idx;
	}

	int _getArrWidgetDescriptorsLength() {
		return this._arrWidgetDescriptors.length;
	}

	void _refreshWidgetsList() {
		this._arrWidgetDescriptors = _WIDGET_DESCRIPTORS
			.where((x) => this._doesWidgetDescriptorMatchTerm(x, this._searchText))
			.sortByString((x) => "${x.groupPriority}_${x.title}")
			.toList()
		;
	}

	bool _doesWidgetDescriptorMatchTerm(WidgetDescriptor widgetDescriptor, String term) {
		if (term.isEmpty) {
			return true;
		}

		return widgetDescriptor.title.toLowerCase().contains(term.toLowerCase());
	}


	/* LIFECYCLE (20) **/
	@override
	void hookInitState() {
		this._refreshWidgetsList();
	}
}
