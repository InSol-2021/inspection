import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class Date extends RuleStructure implements RuleAbstract {
  Date(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    return DateTime.tryParse(input!) != null;
  }

  @override
  dynamic customMessage() {
    return trans('date', {'name': name});
  }
}
