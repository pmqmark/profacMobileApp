import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:profac/application/booking/bookings/bookings_bloc.dart';
import 'package:profac/domain/booking/model/booking_model.dart';
import 'package:profac/presentation/bookings/widgets/booking_item_card.dart';
import 'package:profac/presentation/common_widgets/constant_widgets.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {
  final ScrollController _scrollController = ScrollController();
  late DateFormat _dateFormatter;

  @override
  void initState() {
    super.initState();
    _dateFormatter = DateFormat('MMMM, y');
    _scrollController.addListener(_onScroll);
    context.read<BookingsBloc>().add(const BookingsEvent.getAllBookings());
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context.read<BookingsBloc>().add(const BookingsEvent.getMoreBookings());
    }
  }

  Map<DateTime, List<BookingModel>> _groupBookingsByDate(
      List<BookingModel> bookings) {
    final map = <DateTime, List<BookingModel>>{};

    // Bookings are already sorted by createdAt in the BLoC
    for (final booking in bookings) {
      final date = DateTime(
        booking.createdAt.year,
        booking.createdAt.month,
        booking.createdAt.day,
      );
      map.putIfAbsent(date, () => []).add(booking);
    }

    return map;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Bookings'),
      ),
      body: BlocConsumer<BookingsBloc, BookingsState>(
        listener: (context, state) {
          // Handle side effects if needed
        },
        builder: (context, state) {
          if (state.isLoading && state.bookings.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.failure != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Something went wrong'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<BookingsBloc>().add(
                          const BookingsEvent.getAllBookings(),
                        ),
                    child: const Text('Retry',
                        style: TextStyle(color: Colors.white)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            );
          }
          if (state.bookings.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/booking/no_bookings.png', height: 280),
                  VerticalSpace(25),
                  Text(
                    'No bookings yet',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  VerticalSpace(10),
                  Text(
                    'Your past bookings show up here',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  VerticalSpace(50),
                ],
              ),
            );
          }
          final groupedBookings = _groupBookingsByDate(state.bookings);
          final dates = groupedBookings.keys.toList()
            ..sort((a, b) => b.compareTo(a));

          return RefreshIndicator(
            color: Theme.of(context).primaryColor,
            backgroundColor: Colors.white,
            onRefresh: () async {
              context
                  .read<BookingsBloc>()
                  .add(const BookingsEvent.getAllBookings());
            },
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              controller: _scrollController,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: dates.length + (state.isLoadingMore ? 1 : 0),
              separatorBuilder: (context, index) => const VerticalSpace(10),
              itemBuilder: (context, index) {
                if (index >= dates.length) {
                  return const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }

                final date = dates[index];
                final bookings = groupedBookings[date]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        _formatDate(date),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    ...bookings.map((booking) => Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: BookingItemCard(bookingModel: booking),
                        )),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    final day = date.day;
    final suffix = _getDaySuffix(day);
    return '$day$suffix ${_dateFormatter.format(date)}';
  }

  String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    switch (day % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }
}
