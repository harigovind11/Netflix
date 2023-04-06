import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

import '../../domain/core/failures/main_failure.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.initial()) {
    on<_getDownloadsImages>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLoading: true,
            downloadsFailureOrSuccessOption: none(),
          ),
        );
        final Either<MainFailure, List<Downloads>> downloadOptions =
            await _downloadsRepo.getDownloadsImages();
        emit(
          downloadOptions.fold(
            (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: Some(
                Left(failure),
              ),
            ),
            (success) => state.copyWith(
                isLoading: false,
                downloads: success,
                downloadsFailureOrSuccessOption: Some(
                  Right(success),
                )),
          ),
        );
      },
    );
  }

  final IDownloadsRepo _downloadsRepo;
}
