import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/settings/delete_profile/i_delete_profile_repo.dart';

part 'delete_profile_event.dart';
part 'delete_profile_state.dart';
part 'delete_profile_bloc.freezed.dart';

@injectable
class DeleteProfileBloc extends Bloc<DeleteProfileEvent, DeleteProfileState> {
  final IDeleteProfileRepo _deleteProfileRepo;
  DeleteProfileBloc(this._deleteProfileRepo) : super(_Initial()) {
    on<_Reset>((event, emit) {
      emit(const _Initial());
    });
    on<_DeleteProfile>((event, emit) async {
      emit(_Loading());
      final result = await _deleteProfileRepo.deleteProfile(
       email: event.email,
       otp: event.otp,
      );
      result.fold(
        (failure) => emit(_Error(failure)),
        (_) => emit(
          _ProfileDeleted(),
        ),
      );
    });
  }
}
