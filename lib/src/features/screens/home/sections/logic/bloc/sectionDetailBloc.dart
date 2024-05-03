import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:narxoz_project/src/features/screens/home/sections/logic/models/LessonByDateModel.dart';

import '../models/SectionShowModel.dart';
import '../repository/repository.dart';

@Injectable()
class SectionDetailBloc extends Bloc<SectionDetailEvent, SectionDetailState> {
  final SectionsRepository sectionsRepository;

  SectionDetailBloc(this.sectionsRepository) : super(SectionDetailLoading()) {
    on<SectionDetailInfo>(
      (event, emit) async {
        emit(SectionDetailLoading());
        try {
          final sectionShow =
              await sectionsRepository.getSectionsShow(event.id);
          
          emit(SectionDetailSuccess(sectionShow));
        } on DioError catch (e) {
          emit(SectionDetailError(e.message));
        }
      },
    );
  }
}

abstract class SectionDetailEvent {}

abstract class SectionDetailState {}

class SectionDetailInfo extends SectionDetailEvent {
  final int id;
  SectionDetailInfo(this.id);
}



class SectionDetailLoading extends SectionDetailState {}


class SectionDetailError extends SectionDetailState {
  final String message;
  SectionDetailError(this.message);
}

class SectionDetailSuccess extends SectionDetailState {
  final List<SectionsShowModel> sectionShow;
  SectionDetailSuccess(this.sectionShow);
}
