import 'package:flutter/material.dart';

import '../app_theme/app_colors.dart';
import 'app_text/app_text.dart';

// ignore: must_be_immutable
class AppTextFormFiled extends StatefulWidget {
  final String hintText;
  final double width;
  final double height;
  final bool isPassword;
  final bool isNumber;
  final double textSize;
  final bool isPrefixIcon;
  final int lines;
  final Function(String)? validation;
  final TextEditingController? cntr;
  final TextInputType? keyboardtype;
  final bool readOnly;
  final IconData prefixIcon;
  final IconData sufixIcon;
  final GestureTapCallback? onTextFieldClick;
  final FontWeight? fontweight;
  final Color? cursorColor;
  final Color? textColor;
  final Color? backGroundColor;
  final TextAlign? textAlign;
  final IconData headIcon;
  final TextAlignVertical? textAlignVertical;

  Function? onChange;
  TextEditingController? controller;

  AppTextFormFiled({
    Key? key,
    this.width = double.infinity,
    this.prefixIcon = Icons.mail_outline_sharp,
    this.isPrefixIcon = false,
    this.cursorColor = Colors.black,
    this.textColor = Colors.black,
    this.isPassword = false,
    this.isNumber = false,
    this.onChange,
    this.hintText = "example@gmail.com",
    this.textSize = 14,
    this.height = 75,
    this.validation,
    this.onTextFieldClick,
    this.keyboardtype,
    this.readOnly = false,
    this.headIcon = Icons.person,
    this.lines = 1,
    this.fontweight = FontWeight.w400,
    this.textAlign = TextAlign.start,
    this.textAlignVertical = TextAlignVertical.center,
    this.cntr,
    this.backGroundColor = Colors.white,
    this.sufixIcon = Icons.add,
  }) : super(key: key);
  @override
  State<AppTextFormFiled> createState() => _AppTextFormFiledState();
}

class _AppTextFormFiledState extends State<AppTextFormFiled> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                widget.headIcon,
                size: 10,
                color: AppColors.primaryColor,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: AppText.text(
                  widget.hintText,
                  fontsize: 14,
                  fontweight: FontWeight.w500,
                  color: AppColors.primaryColor,
                  maxlines: 2,
                  feildOverFlow: TextOverflow.ellipsis,
                  textAlignment: TextAlign.start,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          TextFormField(
            // focusNode: _focusNode,
            maxLines: widget.lines,
            // minLines: widget.lines,
            onTap: widget.onTextFieldClick,
            readOnly: widget.readOnly,
            validator: (v) {
              try {
                widget.validation!(v!);
                // ignore: empty_catches
              } catch (e) {}
              return null;
            },
            // obscureText: isObscure,
            cursorColor: widget.cursorColor,
            textAlignVertical: widget.textAlignVertical,
            textAlign: widget.textAlign!,
            onChanged: (value) {
              try {
                widget.onChange!(value);
                // ignore: empty_catches
              } catch (e) {}
            },
            style: TextStyle(
                color: widget.textColor,
                fontWeight: widget.fontweight,
                fontSize: widget.textSize,
                fontFamily: "Poppins"),
            controller: widget.cntr,
            obscureText: widget.isPassword ? !isObscure : false,
            keyboardType: widget.keyboardtype,
            decoration: InputDecoration(
              alignLabelWithHint: false,
              contentPadding:
                  const EdgeInsets.only(top: 0, bottom: 0, left: 10, right: 5),
              // fillColor: AppColors.grey.withOpacity(0.05),
              fillColor: Colors.white,
              filled: true,

              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: const BorderSide(color: Colors.black, width: 5)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  style: BorderStyle.solid,
                  color: AppColors.primaryColor,
                  width: 2,
                ),
              ),
              prefixIcon: widget.isPrefixIcon
                  ? Icon(
                      widget.prefixIcon,
                      size: 20,
                      color: Colors.white,
                    )
                  : null,
              suffixIcon: widget.isPassword
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black,
                        size: 20,
                      ))
                  : null,
              focusColor: Colors.black,

              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: Colors.black45,
                fontSize: widget.textSize,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
