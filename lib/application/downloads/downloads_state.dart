part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFailureOrSuccessOption,
    List<Downloads>? downloads,
  }) = _DownloadState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      downloadsFailureOrSuccessOption: None(),
      isLoading: false,
    );
  }
}
