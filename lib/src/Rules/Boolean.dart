import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class Boolean extends RuleStructure implements RuleAbstract {
  Boolean(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    return (input! is Boolean);
  }

  @override
  dynamic customMessage() {
    return trans('boolean', {'name': name});
  }
}
