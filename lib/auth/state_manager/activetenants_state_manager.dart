import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:injectable/injectable.dart';

import '../../NavigationBar/ui/Screen/NavigationBar.dart';
import '../../abstracts/states/error_state.dart';
import '../../abstracts/states/loading_state.dart';
import '../../abstracts/states/state.dart';
import '../repository/auth_repository.dart';
import '../request/getactivetenants_request.dart';
import '../request/login_repository.dart';
import '../service/auth_service.dart';
import '../ui/screen/choose_your_workspace_screen.dart';
import '../ui/screen/login_screen.dart';
import '../ui/state/workspace_init_state.dart';


@injectable
class ActiveTenantsCubit extends Cubit<States> {
  final AuthRepository _authRepository;
  final AuthService _authService;

  ActiveTenantsCubit(this._authRepository, this._authService) : super(LoadingState());


  getActiveTenants(ChooseYourWorkspaceScreenState screenState,GetActiveTenantsRequest request) {

    emit(LoadingState());
    _authRepository.GetActiveTenantsByEmail(request).then((value) {
      if (value == null) {
        emit(ErrorState(
            errorMessage: 'Connection error',
            retry: () {
              getActiveTenants(screenState,request);
            }));
      } else if (value.success == true) {

        emit(WorkSpaceInitStates(screenState,value));
      }

    });
  }
  login(LoginRequest request,LogInScreenState screenState) {
    emit(LoadingState());
    _authRepository.loginRequest(request).then((value) {
      if (value == null) {
        Navigator.pop(screenState.context);
        Fluttertoast.showToast(msg: 'Connection error');
//        emit(ErrorState(errorMessage: 'Connection error', retry: () {}));
      } else if (value.success == true) {
        // logInModel TT = logInModel.fromJson(value.result);
        // _authService.setToken(TT.token ??"",);
        // _authService.setToken(value.data.insideData ?? "");
    Navigator.push(screenState.context, MaterialPageRoute(builder: (context)=>NavigationBarr()));
      }

    });

  }




}
