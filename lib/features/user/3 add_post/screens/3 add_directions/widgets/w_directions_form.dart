import 'package:flutter/material.dart';

import 'w_add_directions_tile.dart';
import 'w_directions_add_btn.dart';



class AddDirectionsForm extends StatelessWidget {
  const AddDirectionsForm({
    super.key,
  });

  final int itemCount = 30;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return index == itemCount - 1
              ?

              //--------------- INGREDIENT ADD BUTTON ---------------

              const DirectionsAddButton()
              :

              //--------------- INGREDIENT ADD FIELD ---------------

               AddDirectionsTile(index: index+1,);
        },
      ),
    );
  }
}
