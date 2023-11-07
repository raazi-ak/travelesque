import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelesque/cubit/app_qubit_states.dart';
import 'package:travelesque/model/data_model.dart';
import 'package:travelesque/pages/detail_page.dart';
import 'package:travelesque/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  DetailPage(DataModel data) {
    emit(DetailState(data));
  }
}
