import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../models/SectionsIndexModel.dart';
import '../repository/repository.dart';

@Injectable()
class SectionsIndexBloc extends Bloc<SectionsIndexEvent, SectionsIndexState> {
  final SectionsRepository sectionsRepository;

  SectionsIndexBloc(this.sectionsRepository) : super(SectionsIndexLoading()) {
    on<GetSectionsIndexEvent>(
      (event, emit) async {
        emit(SectionsIndexLoading());
        try {
          final sectionsIndex = await sectionsRepository.getSectionsIndex();
          emit(SectionsIndexSuccess(sectionsIndex));
        } on DioError catch (e) {
          emit(SectionsIndexFailure(e.message));
        }
      },
    );
  }
}

abstract class SectionsIndexState {}

abstract class SectionsIndexEvent {}

class GetSectionsIndexEvent extends SectionsIndexEvent {}

class SectionsIndexLoading extends SectionsIndexState {}

class SectionsIndexSuccess extends SectionsIndexState {
  final List<SectionsIndexModel> sectionsIndex;

  SectionsIndexSuccess(this.sectionsIndex);
}

class SectionsIndexFailure extends SectionsIndexState {
  final String message;

  SectionsIndexFailure(this.message);
}
