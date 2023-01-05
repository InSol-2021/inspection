import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class StringValue extends RuleStructure implements RuleAbstract {
  StringValue(InspectionCase inspectionCaseObject)
      : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    return input is String;
  }

  @override
  dynamic customMessage() {
    return trans('string', {'name': name});
  }
}
