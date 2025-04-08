import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:profac/application/address/address_bloc.dart';
import 'package:profac/application/cart_items/cart_items_bloc.dart';
import 'package:profac/application/profile/profile_bloc.dart';
import 'package:profac/application/search_location/search_location_bloc.dart';
import 'package:profac/domain/address/model/address_modal.dart';
import 'package:profac/domain/address/model/g_map_location_address_model.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';
import 'package:profac/presentation/common_widgets/failure_screen.dart';
import 'package:profac/presentation/common_widgets/success_check.dart';

class FindLocationScreen extends StatefulWidget {
  const FindLocationScreen({super.key});

  @override
  _FindLocationScreenState createState() => _FindLocationScreenState();
}

class _FindLocationScreenState extends State<FindLocationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  bool isChecked = false;

  @override
  void initState() {
    log("FindLocationScreen initState");
    BlocProvider.of<ProfileBloc>(context).add(
      const ProfileEvent.loadProfile(),
    );
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: BlocConsumer<ProfileBloc, ProfileState>(
            listener: (context, profileState) {
              profileState.maybeMap(
                orElse: () {},
                initial: (value) {},
                error: (failure) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => FailureScreen(
                        failure: failure.failure,
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const FindLocationScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
                profileLoaded: (state) {
                  BlocProvider.of<AddressBloc>(context).add(
                    const AddressEvent.manageInitialLocation(),
                  );
                },
              );
            },
            builder: (context, profileState) {
              return BlocConsumer<AddressBloc, AddressState>(
                listener: (context, locationState) {
                  locationState.maybeMap(
                    orElse: () {},
                    loadedAddress: (latlong) {
                      BlocProvider.of<CartItemsBloc>(context).add(
                        CartItemsEvent.getCart(),
                      );
                      Future.delayed(const Duration(seconds: 1)).then((value) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      });
                    },
                    loadedLocation: (value) {
                      Future.delayed(const Duration(seconds: 1)).then((value) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      });
                    },
                    error: (failure) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => FailureScreen(
                            failure: failure.error,
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const FindLocationScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
                builder: (context, locationState) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (profileState is ProfileLoaded &&
                        (locationState is LoadedAddress ||
                            locationState is LoadedLocation)) {
                      setState(() {
                        isChecked = true;
                      });
                    }
                  });
                  if (locationState is AddressLoading ||
                      profileState is ProfileLoading) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _findingLocation(),
                    );
                  }
                  if (profileState is ProfileLoaded &&
                      locationState is LoadedAddress) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _foundAddress(locationState.address),
                    );
                  }
                  if (profileState is ProfileLoaded &&
                      locationState is LoadedLocation) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _foundLocation(locationState.address),
                    );
                  }
                  return VerticalSpace(1);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  _foundLocation(GMapAddress address) {
    return [
      SuccessCheck(isChecked: isChecked),
      VerticalSpace(10),
      Text(
        address.formattedAddress,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    ];
  }

  _foundAddress(AddressModel address) {
    return [
      SuccessCheck(isChecked: isChecked),
      VerticalSpace(10),
      Text(address.type,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlign: TextAlign.center),
      Text(
        address.formattedAddress,
        style: Theme.of(context)
            .textTheme
            .labelMedium
            ?.copyWith(fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    ];
  }

  _findingLocation() {
    return [
      Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            painter: WavePainter(_controller),
            size: const Size(150, 150),
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: const Icon(
              Icons.location_on,
              size: 50,
              color: Color(0xFF57BC5B),
            ),
          ),
        ],
      ),
      Text(
        'Finding Location...',
        style: Theme.of(context).textTheme.labelLarge,
      )
    ];
  }
}

class WavePainter extends CustomPainter {
  final Animation<double> animation;

  WavePainter(this.animation) : super(repaint: animation);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = size.width / 2;
    const waveCount = 3;

    for (int i = 0; i < waveCount; i++) {
      final progress = (animation.value + i / waveCount) % 1.0;
      final radius = maxRadius * progress;
      if (radius > 0) {
        paint.color = Color(0xFF57BC5B).withOpacity(0.5 - progress * 0.5);
        canvas.drawCircle(center, radius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
