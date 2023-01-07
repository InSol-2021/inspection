import 'package:inspection/src/RuleAbstract.dart';
import 'package:inspection/src/InspectionCase.dart';
import 'package:inspection/src/RuleStructure.dart';

class Nullable extends RuleStructure implements RuleAbstract {
  Nullable(InspectionCase inspectionCaseObject) : super(inspectionCaseObject);

  @override
  bool manualCheck() {
    return input == null;
  }

  @override
  dynamic customMessage() {
    return trans('nullable', {'name': name});
  }
}
