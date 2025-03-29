import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/settings/download_data/i_download_data_repo.dart';

part 'download_data_event.dart';
part 'download_data_state.dart';
part 'download_data_bloc.freezed.dart';

@injectable
class DownloadDataBloc extends Bloc<DownloadDataEvent, DownloadDataState> {
  final IDownloadDataRepo _downloadDataRepo;
  DownloadDataBloc(this._downloadDataRepo) : super(_Initial()) {
    on<_Reset>((event, emit) {
      emit(const _Initial());
    });
    on<_DownloadData>((event, emit) async {
      emit(_Loading());
      final result = await _downloadDataRepo.downloadData(event.email);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_DataDownloaded()),
      );
    });
  }
}
