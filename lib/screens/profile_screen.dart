import 'package:flutter/cupertino.dart';

import '../components/backgroundcolor/background_color.dart';
import '../components/button/small_button.dart';
import '../components/facespot/face_spot_large.dart';
import '../components/form/component_form.dart';
import '../components/icon/arrow_icon.dart';
import '../components/icon/logout_icon.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
        children: [
          BackgroundColor(
            colorcontainerup: Color.fromRGBO(255, 255, 255, 1),
            colorcontainerdown: Color.fromRGBO(23, 49, 84, 1),
            width: 320, height: 130,),
          Padding(
            padding: EdgeInsets.only(top: 50,left: 30,right: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ArrowIcon(),
                    LogoutIcon(),
                  ],
                ),
                FaceSpotLarge(),
                ComponentForm(),
                SmallButton(buttonText: "Salvar",textMessage: "Salvo com Sucesso!"),
              ],
            ),
          ),
        ]
    );
  }
}
