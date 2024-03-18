import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:toast/common/app/widgets/decoration_items/custom_containers/constrained_container.dart';
import 'package:toast/features/user/social/controller/add_directions_controller.dart';
import 'package:toast/utils/constants/colors.dart';
import 'package:toast/utils/constants/sizes.dart';
import 'package:toast/utils/validators/validation.dart';

class AddDirectionsTile extends StatelessWidget {
  const AddDirectionsTile({
    super.key,
    required this.index,
    required this.textEditingController,
  });

  final int index;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
         final AddDirectionsController controller = Get.find();
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) { controller.removeItem(index);},
            backgroundColor: JColor.error,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.all(JmSize.spaceBtwInputFields),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: JmSize.spaceBtwInputFields),
              height: 61,
              width: 61,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(JSize.borderRadLg),
                color: JColor.secondary,
              ),
              child: Center(
                child: Text(
                  '${index+1}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: JColor.textPrimary,
                  ),
                ),
              ),
            ),
            Flexible(
              child: JTextFIeldContainer(
                child: TextFormField(
                  controller: textEditingController,
                  validator: (value) =>
                      JValidator.validateEmptyText('Title', value),
                  decoration: const InputDecoration(
                    labelText: 'Direction',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}