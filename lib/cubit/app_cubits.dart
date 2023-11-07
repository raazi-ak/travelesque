import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelesque/cubit/app_qubit_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
  void getData(){
    try{

    }catch(e){
      emit(LoadingState());
      
    }
  }

}
