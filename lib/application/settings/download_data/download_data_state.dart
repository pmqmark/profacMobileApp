part of 'download_data_bloc.dart';

@freezed
class DownloadDataState with _$DownloadDataState {
  const factory DownloadDataState.initial() = _Initial;
  const factory DownloadDataState.loading() = _Loading;
  const factory DownloadDataState.dataDownloaded() = _DataDownloaded;
  const factory DownloadDataState.error(MainFailure failure) = _Error;
}
