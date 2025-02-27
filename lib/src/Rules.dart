import 'package:inspection/src/Rules/AlphaAndNumber.dart';
import 'package:inspection/src/Rules/Between.dart';
import 'package:inspection/src/Rules/Contains.dart';
import 'package:inspection/src/Rules/Email.dart';
import 'package:inspection/src/Rules/EndWith.dart';
import 'package:inspection/src/Rules/HaveAlpha.dart';
import 'package:inspection/src/Rules/Hex.dart';
import 'package:inspection/src/Rules/IP.dart';
import 'package:inspection/src/Rules/IranNationalCode.dart';
import 'package:inspection/src/Rules/Max.dart';
import 'package:inspection/src/Rules/Min.dart';
import 'package:inspection/src/Rules/NotIn.dart';
import 'package:inspection/src/Rules/Numeric.dart';
import 'package:inspection/src/Rules/OnlyFloat.dart';
import 'package:inspection/src/Rules/OnlyInt.dart';
import 'package:inspection/src/Rules/OnlyNumber.dart';
import 'package:inspection/src/Rules/OnlyAlpha.dart';
import 'package:inspection/src/Rules/Date.dart';
import 'package:inspection/src/Rules/Boolean.dart';
import 'package:inspection/src/Rules/String.dart';
import 'package:inspection/src/Rules/Nullable.dart';
import 'package:inspection/src/Rules/Regex.dart';
import 'package:inspection/src/Rules/Required.dart';
import 'package:inspection/src/Rules/StartWith.dart';
import 'package:inspection/src/Rules/Url.dart';
import 'package:inspection/src/Rules/GT.dart';
import 'package:inspection/src/Rules/GTE.dart';
import 'package:inspection/src/Rules/LT.dart';
import 'package:inspection/src/Rules/LTE.dart';
import 'package:inspection/src/Rules/In.dart';
import 'package:inspection/src/Rules/IranMobile.dart';

class Rules {
  checkRule(ruleString, inspectionCase) {
    switch (ruleString) {
      case 'have_alpha':
        return HaveAlpha(inspectionCase).stringValidation();
      case 'max':
        return Max(inspectionCase).stringValidation();
      case 'min':
        return Min(inspectionCase).stringValidation();
      case 'url':
        return Url(inspectionCase).stringValidation();
      case 'hex':
        return Hex(inspectionCase).stringValidation();
      case 'email':
        return Email(inspectionCase).stringValidation();
      case 'contains':
        return Contains(inspectionCase).stringValidation();
      case 'ip':
        return IP(inspectionCase).stringValidation();
      case 'integer':
        return OnlyInt(inspectionCase).stringValidation();
      case 'float':
        return OnlyFloat(inspectionCase).stringValidation();
      case 'numeric':
        return Numeric(inspectionCase).stringValidation();
      case 'alpha':
        return OnlyAlpha(inspectionCase).stringValidation();
      case 'number':
        return OnlyNumber(inspectionCase).stringValidation();
      case 'alpha_num':
        return AlphaAndNumber(inspectionCase).stringValidation();
      case 'gt':
        return GT(inspectionCase).stringValidation();
      case 'gte':
        return GTE(inspectionCase).stringValidation();
      case 'lt':
        return LT(inspectionCase).stringValidation();
      case 'lte':
        return LTE(inspectionCase).stringValidation();
      case 'in':
        return In(inspectionCase).stringValidation();
      case 'not_in':
        return NotIn(inspectionCase).stringValidation();
      case 'required':
        return Required(inspectionCase).stringValidation();
      case 'starts_with':
        return StartWith(inspectionCase).stringValidation();
      case 'ends_with':
        return EndWith(inspectionCase).stringValidation();
      case 'regex':
        return Regex(inspectionCase).stringValidation();
      case 'between':
        return Between(inspectionCase).stringValidation();
      case 'boolean':
        return Boolean(inspectionCase).stringValidation();
      case 'date':
        return Date(inspectionCase).stringValidation();
      case 'string':
        return StringValue(inspectionCase).stringValidation();
      case 'nullable':
        return Nullable(inspectionCase).stringValidation();
      case 'iran_national_code':
        return IranNationalCode(inspectionCase).stringValidation();
      case 'iran_mobile':
        return IranMobile(inspectionCase).stringValidation();
    }
  }
}
