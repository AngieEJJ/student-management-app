import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home/styles/app_colors.dart';

class DeleteIconPopup extends StatelessWidget {
  const DeleteIconPopup(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.buttonname1,
      required this.buttonname2});

  final String title;
  final String subtitle;
  final String buttonname1;
  final String buttonname2;

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
                margin: const EdgeInsets.only(top: 60),
                child: Column(children: [
                  AlertDialog(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    content: Container(
                      constraints: BoxConstraints(
                        maxHeight: 110,
                        minWidth: 80,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8),
                          Text(
                            subtitle,
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.neutral_40,
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    minimumSize: const Size(55, 35),
                                  ),
                                  child: Text(
                                    buttonname1,
                                    style:
                                        TextStyle(color: AppColors.primary_50),
                                  )),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.primary_90,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    minimumSize: const Size(55, 35),
                                  ),
                                  child: Text(
                                    buttonname2,
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ])));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      child: IconButton(
        splashRadius: 18,
        onPressed: () {
          _showCustomDialog(context);
        },
        icon: SvgPicture.asset(
          'assets/icon/icon_30/Delete_Float.svg',
        ),
      ),
    );
  }
}
