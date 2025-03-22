import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/presentation/address/widgets/edit_reciever_sheet.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class ReceiverDetailsCard extends StatefulWidget {
  const ReceiverDetailsCard({
    super.key,
    required this.receiverNameController,
    required this.receiverMobileController,
  });
  final TextEditingController receiverNameController;
  final TextEditingController receiverMobileController;

  @override
  State<ReceiverDetailsCard> createState() => _ReceiverDetailsCardState();
}

class _ReceiverDetailsCardState extends State<ReceiverDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) {
          if (widget.receiverNameController.text.isNotEmpty &&
              widget.receiverMobileController.text.isNotEmpty) {
            return _buildRecieverDetails(widget.receiverNameController.text,
                widget.receiverMobileController.text, context);
          }
          return state.maybeMap(
            orElse: () {
              return BlocProvider.of<ProfileBloc>(context).state.maybeMap(
                orElse: () {
                  return GestureDetector(
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        "Add Reciever Details",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  );
                },
                profileLoaded: (value) {
                  return _buildRecieverDetails(
                      value.model.name, value.model.mobile, context);
                },
              );
            },
            loadedAddress: (value) {
              final address = value.address;
              final mobile = address.mobile;
              final name = address.name;
              return _buildRecieverDetails(name, mobile, context);
            },
          );
        },
      ),
    );
  }

  Row _buildRecieverDetails(String name, String mobile, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Icon(
            Icons.person_outline,
            color: Colors.black,
            size: 17,
          ),
        ),
        Flexible(
          child: Text(
            '$name, ',
            style: Theme.of(context).textTheme.titleSmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          ' $mobile',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(left: 18),
          child: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white,
                  context: context,
                  builder: (context) {
                    return EditRecieverSheet(
                      name: name,
                      phone: mobile,
                      onSave: (name, phone) {
                        widget.receiverNameController.text = name;
                        widget.receiverMobileController.text = phone;
                        setState(() {});
                      },
                    );
                  });
            },
            child: Text(
              'Change',
              style: TextStyle(
                color: Color(0xFF56BC5A),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
