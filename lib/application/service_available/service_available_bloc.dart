import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'service_available_event.dart';
part 'service_available_state.dart';
part 'service_available_bloc.freezed.dart';
@injectable
class ServiceAvailableBloc extends Bloc<ServiceAvailableEvent, ServiceAvailableState> {
  ServiceAvailableBloc() : super(ServiceAvailableState.initial()) {
    on<_SetValue>((event, emit) {
      emit(ServiceAvailableState(isAvailable: event.isAvailable));
    });
    on<_Reset>((event, emit) {
      emit(ServiceAvailableState.initial());
    });
  }
}
