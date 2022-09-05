import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:workiom/auth/response/activetenants_response.dart';
import 'package:workiom/auth/response/login_response.dart';

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
  final _loadingStateSubject = PublishSubject<AsyncSnapshot>();
  Stream<AsyncSnapshot> get loadingStream => _loadingStateSubject.stream;

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
        List<Result> res = [];
        for (var item in value.result) {
          res.add(Result.fromJson(item));
        }
        emit(WorkSpaceInitStates(screenState,res));
      }

    });
  }
  login(LoginRequest request,LogInScreenState screenState) {
    _loadingStateSubject.add(AsyncSnapshot.waiting());
    _authRepository.loginRequest(request).then((value) {
      if (value == null) {
        _loadingStateSubject.add(AsyncSnapshot.nothing());
        Navigator.pop(screenState.context);
        Fluttertoast.showToast(msg: 'Connection error');
//        emit(ErrorState(errorMessage: 'Connection error', retry: () {}));
      } else if (value.success == true) {
        _loadingStateSubject.add(AsyncSnapshot.waiting());
        LoginResponse TT = LoginResponse.fromJson(value.result);
         _authService.setToken(TT.accessToken ??"",);
        // _authService.setToken(value.data.insideData ?? "");
    Navigator.pushAndRemoveUntil(screenState.context, MaterialPageRoute(builder: (context)=>NavigationBarr()),(route) => false,);
      }

    });

  }




}

