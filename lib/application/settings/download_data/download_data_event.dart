part of 'download_data_bloc.dart';

@freezed
class DownloadDataEvent with _$DownloadDataEvent {
  const factory DownloadDataEvent.reset() = _Reset;
  const factory DownloadDataEvent.downloadData(String email) = _DownloadData;
}
