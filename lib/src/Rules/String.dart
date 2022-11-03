import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class String extends RuleStructure implements RuleAbstract {
  String(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    return (input! is String);
  }

  @override
  dynamic customMessage() {
    return trans('string', {'name': name});
  }
}
