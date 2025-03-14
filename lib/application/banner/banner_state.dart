part of 'banner_bloc.dart';

@freezed
class BannerState with _$BannerState {
  const factory BannerState.initial() = _Initial;
  const factory BannerState.loading() = _Loading;
  const factory BannerState.loaded(List<BannerModel> banners) = _Loaded;
  const factory BannerState.error(MainFailure failure) = _Error;
}
