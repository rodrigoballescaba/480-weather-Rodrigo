import 'package:auto_size_text/auto_size_text.dart';
import 'package:cuatrochenta_weather_rodrigo/models/user.dart';
import 'package:cuatrochenta_weather_rodrigo/services/controller.dart';
import 'package:cuatrochenta_weather_rodrigo/theme/colors.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/button_widget.dart';
import 'package:cuatrochenta_weather_rodrigo/ui/widgets/text_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:get/instance_manager.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _nameController = TextEditingController();
  final _cityController = TextEditingController();
  final _mailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _date = DateTime.now().toIso8601String().obs;
  final _dateFormat = ''.obs;

  final _nameValidate = false.obs;
  final _cityValidate = false.obs;
  final _mailValidate = false.obs;
  final _phoneValidate = false.obs;
  final _ageValidate = false.obs;

  final _validateForm = false.obs;
  final _focusCity = FocusNode();
  final _focusMail = FocusNode();
  final _focusPhone = FocusNode();

  final Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Padding(
          padding: EdgeInsets.only(top: 40.0.h),
          child: Center(
            child: Container(
              width: 320.0.w,
              height: 470.0.h,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20.0.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.0.h,
                  ),
                  _formName(),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  _formPhone(),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  _formMail(),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  _formCity(),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  AutoSizeText(
                    'date'.tr,
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      color: blueOriginal,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  _formBirthdate(),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  _formButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formName() {
    return TextFormWidget(
      controller: _nameController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      maxLength: 64,
      onChanged: (value) {
        _nameValidate(value.trim().isNotEmpty);
      },
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(_focusPhone);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0.w),
        hintText: 'name'.tr,
        counterText: '',
        hintStyle: TextStyle(
          fontSize: 13.0.sp,
          color: blueLight,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _nameValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _nameValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        filled: true,
        fillColor: blueLight.withOpacity(0.1),
      ),
      style: TextStyle(
        fontSize: 13.0.sp,
        color: blueLight,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  Widget _formPhone() {
    return TextFormWidget(
      controller: _phoneController,
      keyboardType: TextInputType.phone,
      textInputAction: TextInputAction.next,
      maxLength: 14,
      focusNode: _focusPhone,
      onChanged: (value) {
        _phoneValidate(GetUtils.isPhoneNumber(value.trim()));
      },
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(_focusMail);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0.w),
        hintText: 'phone'.tr,
        counterText: '',
        hintStyle: TextStyle(
          fontSize: 13.0.sp,
          color: blueLight,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _phoneValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _phoneValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        filled: true,
        fillColor: blueLight.withOpacity(0.1),
      ),
      style: TextStyle(
        fontSize: 13.0.sp,
        color: blueLight,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  Widget _formMail() {
    return TextFormWidget(
      controller: _mailController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      maxLength: 64,
      focusNode: _focusMail,
      onChanged: (value) {
        _mailValidate(GetUtils.isEmail(value.trim()));
      },
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(_focusCity);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0.w),
        hintText: 'mail'.tr,
        counterText: '',
        hintStyle: TextStyle(
          fontSize: 13.0.sp,
          color: blueLight,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _mailValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _mailValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        filled: true,
        fillColor: blueLight.withOpacity(0.1),
      ),
      style: TextStyle(
        fontSize: 13.0.sp,
        color: blueLight,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  Widget _formCity() {
    return TextFormWidget(
      controller: _cityController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      maxLength: 64,
      focusNode: _focusCity,
      onChanged: (value) {
        _cityValidate(value.trim().isNotEmpty);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.0.w),
        hintText: 'city'.tr,
        counterText: '',
        hintStyle: TextStyle(
          fontSize: 13.0.sp,
          color: blueLight,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _cityValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: _cityValidate.value || !_validateForm.value ? transparent : orange),
          borderRadius: BorderRadius.circular(10.0.r),
        ),
        filled: true,
        fillColor: blueLight.withOpacity(0.1),
      ),
      style: TextStyle(
        fontSize: 13.0.sp,
        color: blueLight,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }

  Widget _formBirthdate() {
    return GestureDetector(
      onTap: () async {
        await _showDatePicker();
      },
      child: Container(
        height: 45.0.h,
        width: 270.0.w,
        decoration: BoxDecoration(
          color: blueLight.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10.0.r),
          border: _ageValidate.value || !_validateForm.value ? null : Border.all(color: orange, width: 1.0.w),
        ),
        child: Center(
          child: AutoSizeText(
            _dateFormat.value.isEmpty ? 'date'.tr : _dateFormat.value,
            style: TextStyle(
              fontSize: 13.0.sp,
              color: blueOriginal,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }

  Widget _formButton() {
    return ButtonWidget(
      function: _okContact,
      width: 320.0.w,
      height: 64.0.h,
      backgroundColor: MaterialStateProperty.all(
        _isFormCompleted() ? blueOriginal : blueOriginal.withOpacity(0.5),
      ),
      overlayColor: MaterialStateProperty.all(
        white.withOpacity(0.1),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0.r),
            bottomRight: Radius.circular(20.0.r),
          ),
        ),
      ),
      child: AutoSizeText(
        'ok'.tr.toUpperCase(),
        style: TextStyle(
          fontSize: 17.0.sp,
          color: white,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  Future<void> _showDatePicker() async {
    await showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 380.0.h,
        color: blueOriginal,
        child: Column(
          children: [
            SizedBox(
              height: 300.0.h,
              child: CupertinoTheme(
                data: const CupertinoThemeData(
                  brightness: Brightness.dark,
                ),
                child: CupertinoDatePicker(
                  minimumYear: 1920,
                  maximumYear: 2030,
                  backgroundColor: blueOriginal.withOpacity(0.5),
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.parse(_date.value),
                  onDateTimeChanged: (val) {
                    _date(val.toIso8601String());
                  },
                ),
              ),
            ),
            ButtonWidget(
              function: _closeDialogAge,
              width: 180.0.w,
              height: 50.0.h,
              backgroundColor: MaterialStateProperty.all(
                white,
              ),
              overlayColor: MaterialStateProperty.all(
                blueOriginal.withOpacity(0.1),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0.r),
                  ),
                ),
              ),
              child: AutoSizeText(
                'send'.tr.toUpperCase(),
                style: TextStyle(
                  fontSize: 15.0.sp,
                  color: blueOriginal,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _isFormCompleted() {
    return _nameValidate.value && _phoneValidate.value && _mailValidate.value && _cityValidate.value && _ageValidate.value;
  }

  void _closeDialogAge() {
    var dat = DateTime.parse(_date.value);
    _formatAge(dat);

    Navigator.of(context, rootNavigator: true).pop();
  }

  void _formatAge(DateTime dat) {
    var day = dat.day.toString().length == 1 ? dat.day.toString().padLeft(2, '0') : dat.day.toString();
    var month = dat.month.toString().length == 1 ? dat.month.toString().padLeft(2, '0') : dat.month.toString();
    var year = dat.year.toString().length == 1 ? dat.year.toString().padLeft(2, '0') : dat.year.toString();
    _dateFormat('$day/$month/$year');
    _ageValidate(true);
  }

  void _okContact() {
    if (_isFormCompleted()) {
      var user = User(
        name: _nameController.value.text,
        phone: _phoneController.value.text,
        mail: _mailController.value.text,
        city: _cityController.value.text,
        date: _date.value,
      );
      debugPrint(user.toString());
      _controller.user(user);
      _controller.messageSnackBar('confirmContact');
    } else {
      _validateForm(true);
    }
  }
}
