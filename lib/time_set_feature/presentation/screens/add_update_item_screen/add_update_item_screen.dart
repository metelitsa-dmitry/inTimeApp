import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_time/time_set_feature/presentation/screens/add_update_item_screen/widgets/text_choice_chips_widget.dart';
import '../../../domain/entities/item_of_set_entity.dart';
import 'bloc_item_form/item_form_bloc.dart';
import 'widgets/add_update_item_widget.dart';
import 'widgets/list_switchers_widget.dart';
import 'widgets/text_input_field_widget.dart';
import 'widgets/wrap_number_chips_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddUpdateItemBody extends StatelessWidget {
  const AddUpdateItemBody({Key? key, required this.itemOfSet,
  }) : super(key: key);
  final ItemOfSetEntity itemOfSet;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddUpdateItemFormBloc, AddUpdateItemFormState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context).editing_item),
          ),
          body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const AddUpdateItemWidget(),
                  TextInputFieldWidget(itemOfSet: itemOfSet,),
                  const ListOfSwitchersWidget(),
                  const WrapNumberChipsWidget(),
                  const TextChoiceChipsWidget(),
                ],
              ),
            )
          ,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              context.read<AddUpdateItemFormBloc>().add(const SaveItemFormEvent());
              Navigator.pop(context);
            },
            child: const Icon(Icons.save),
          ),
        );
      },
    );
  }
}

