import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../abstracts/states/state.dart';
import '../../request/getactivetenants_request.dart';
import '../../state_manager/activetenants_state_manager.dart';
import 'signin_screen.dart';

@injectable
class ChooseYourWorkspaceScreen extends StatefulWidget {
  final ActiveTenantsCubit cubit;
  ChooseYourWorkspaceScreen(this.cubit);
  @override
  State<ChooseYourWorkspaceScreen> createState() => ChooseYourWorkspaceScreenState();
}

class ChooseYourWorkspaceScreenState extends State<ChooseYourWorkspaceScreen> {
  GetActiveTenantsRequest? request;
  bool flags=true;
  String? email;
  void refresh() {
    if (mounted) {
      setState(() {});
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    if(flags){
      var  args = ModalRoute.of(context)?.settings.arguments;
      if (args != null && args is String) {
email=args;
request=GetActiveTenantsRequest(email);
print("argssssss $args ");
widget.cubit.getActiveTenants(this, request!);
      }
      flags = false;
    }
    return Scaffold(
      backgroundColor: Colors.white,



      body: BlocBuilder<ActiveTenantsCubit, States>(
        bloc: widget.cubit,
        builder: (context, state) {
          return state.getUI(context);
        },
      )

    );
  }
}
