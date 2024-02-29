import 'package:flutter/material.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/common/web/widgets/gap.dart';
import 'package:toast/features/user/social/controller/categeory_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/constants/text_strings.dart';
import 'package:toast/utils/validators/validation.dart';
import 'package:unicons/unicons.dart';

class AddCategeoryPopup extends StatelessWidget {
   AddCategeoryPopup({
    super.key,
  });

final controller = CategeoryController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    
      //----------------------------------------- CATEGEORY ID ------------------------------------
    
        JTextFIeldContainer(
          child: TextFormField(
            // controller: controller.email,
            validator: (value) => JValidator.validateEmptyText('', value),
            decoration: const InputDecoration(
              labelText: 'Categeory Id',
            ),
          ),
        ),
        const JGap(
          h: JmSize.spaceBtwInputFields,
        ),
    
      //----------------------------------------- CATEGEORY NAME ------------------------------------
    
        JTextFIeldContainer(
          child: TextFormField(
            // controller: controller.password,
            validator: (value) => JValidator.validateEmptyText(value,'Password'),
            decoration: const InputDecoration(
              labelText: "Categeory Name",
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
          ),
        ),
        const JGap(
          h: JmSize.spaceBtwInputFields / 2,
        ),
    
      //----------------------------------------- CATEGEORY IMAGE ------------------------------------
    
      InkWell(
        onTap: () {
          controller.uploadImageAdmin();
        },
        child: Container(
              width: 200,
              height:200,
              decoration: BoxDecoration(
                color:  JColor.lightGrey,
                border: Border.all(color:  JColor.darkGrey ),
                borderRadius: BorderRadius.circular(JSize.borderRadLg),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        Icon(UniconsLine.image_upload,color: JColor.black,),
        JGap(
          h: 10.0,
        ),
        Text(
          JTexts.uploadRecipieImage,
          style:TextStyle(color: JColor.black,) ,
        )
                ],
              ),
            ),
      )
    
      ],
    );
  }
}