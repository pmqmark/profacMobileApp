import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/settings/help_and_support/i_help_and_support_repo.dart';
import 'package:profac/domain/settings/help_and_support/model/help_and_support_model.dart';

part 'help_and_support_event.dart';
part 'help_and_support_state.dart';
part 'help_and_support_bloc.freezed.dart';

@injectable
class HelpAndSupportBloc
    extends Bloc<HelpAndSupportEvent, HelpAndSupportState> {
  final IHelpAndSupportRepo _helpAndSupportRepo;
  HelpAndSupportBloc(this._helpAndSupportRepo) : super(_Initial()) {
    on<_Reset>((event, emit) {
      // TODO: implement event handler
    });
    on<_fetchHelpAndSupport>(
      (event, emit) async {
        emit(HelpAndSupportLoading());
        final response = await _helpAndSupportRepo.getHelpAndSupport();
        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(HelpAndSupportLoaded(r)),
        );
      },
    );
  }
}
