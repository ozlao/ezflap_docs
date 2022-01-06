#!/bin/bash
find lib/Examples/ -type f -name "*.dart" | grep -v ".g.dart" | grep -v "/ModelsOverviewHosted.dart" | grep -v "/ModelsMandatoryLate.dart" | grep -v "/ModelsSyntaxUnnamedHosted.dart" | grep -v "/RoutingAnimalProfile.dart" | grep -v "/RefsSingleHosted.dart" | grep -v "/RefsMultiHosted.dart" | grep -v "/PropsSyntaxLate.dart" | grep -v "/SimpleTextButtonEmitFromZml.dart" | grep -v "/SimpleTextButton.dart" | grep -v "/SlotsSectionAdvanced.dart" | grep -v "/SlotsParameters.dart" | grep -v "/SlotsSection.dart" | grep -v "/SlotsSectionWithDefault.dart" | grep -v "/SlotsSectionWithExplicitNamedParameter.dart" | grep -v "/CoreWidgetsEzFloatingActionButton.dart" | grep -v "/ModelsMandatoryLate.dart" | grep -v "/JsonOwnerRx.dart" | grep -v "/JsonOwnerManualRx.dart" | grep -v "/JsonAnimalWithFactories.dart" | grep -v "/JsonAnimal.dart" | grep -v "/JsonOwnerWithFactories.dart" | grep -v "/JsonOwner.dart" | grep -v "/JsonDeepCollections.dart" | grep -v "/AnimalResolver.dart" | grep -v "/CalcService.dart" | grep -v "/CalcServiceCustomParent.dart" | grep -v "/AdvancedCalcService.dart" | grep -v "/DiSomeClass.dart" | grep -v "/AnimalProviderBase.dart" | grep -v "/DiSomeClassWithGetters.dart" | grep -v "/DogAnimalProvider.dart" | grep -v "/CatAnimalProvider.dart" | grep -v "/RoutingAnimalProfile.dart" | grep -v "/TestingCalcService.dart" | grep -v "/TestingHostedWidgetForRefPart.dart" | grep -v "/PinkSections.dart" | grep -v "/Imports.dart" | grep -v "/PositionalParameterTagsBetter.dart" | grep -v "/ZmlTextInterpolation.dart" | grep -v "/ZOn.dart" | grep -v "/NestedRulesExtend.dart" | grep -v "/InteroperabilityDualHostee.dart" | grep -v "/Step2Widget.dart" | grep -v "/Step4Widget.dart" | grep -v "/WizardWidget.dart" | grep -v "/Step1Widget.dart" | grep -v "/ParentWidget.dart" | grep -v "/WizardWithFourStepsWidget.dart" | grep -v "/MiddleWidget.dart" | grep -v "/Step3Widget.dart" | grep -v "/TestingAccessDisabledHostedWidget.dart" | grep -v "/TestingAccessDisabledHostWidgetTest.dart" | grep -v "/InteroperabilityInteractiveHostee.dart" > all.nogit.txt

### Regex to convert find results to code:
#	lib/Examples/([a-zA-Z0-9]+)/([a-zA-Z0-9]+)/([a-zA-Z0-9]+)/([a-zA-Z0-9]+).dart
#	==>
# import 'package:ezflap_docs/Examples/$1/$2/$3/$3.dart';
# WidgetDescriptor(key: "$2$3", groupPriority: _PRIORITY_\U$1\E, title: "$1 / $2 / $3", funcWidgetFactory: () => $3()),
