import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profac/application/authentication/authentication_bloc.dart';
import 'package:profac/presentation/common_widgets/bottom_save_botton.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class DeleteAccountSuccess extends StatelessWidget {
  const DeleteAccountSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(Duration(seconds: 1), () {
        BlocProvider.of<AuthenticationBloc>(context).add(
          AuthenticationEvent.logout(),
        );
      });
    });

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: SizedBox.expand(
          child: Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Text("Deleted Successfully",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Color(0xFF557CFF))),
              VerticalSpace(5),
              Text("Thank you for using Profac !",
                  style: Theme.of(context).textTheme.bodyMedium),
              Spacer(
                flex: 2,
              ),
              Image.asset(
                "assets/delete account/Delete Account Vector.png",
                width: 251.w,
                colorBlendMode: BlendMode.overlay,
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
