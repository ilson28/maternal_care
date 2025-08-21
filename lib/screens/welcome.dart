import 'package:flutter/material.dart';
import 'package:maternalcare/utils/appColors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.backgroundApp,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 113, bottom: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "¡Bienvenida al Cuidado Materno!",
            style: TextStyle(
              color: AppColors.primary,
              fontFamily: "Inclusive Sans",
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Text(
            "Tu compañero en el embarazo y posparto",
            style: TextStyle(
              color: Color(0xff555555),
              fontFamily: "Inclusive Sans",
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 11,
          ),
          Image.asset(
            "assets/images/rectangle.png",
            height: 280,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 40),
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(AppColors.primary)),
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account? ",
                style: TextStyle(
                  color: Color(0x66000000),
                  fontFamily: "Inder",
                  fontSize: 14,
                ),
              ),
              Text(
                "Log in",
                style: TextStyle(
                  color: AppColors.primary,
                  fontFamily: "Inder",
                  fontSize: 14,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
