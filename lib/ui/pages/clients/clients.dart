import 'package:dimexa_vendors/ui/pages/clients/clients_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class Clients extends StatefulWidget {
  const Clients({Key? key}) : super(key: key);

  @override
  _ClientsState createState() => _ClientsState();
}

class _ClientsState extends State<Clients> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClientsController>(
      init: ClientsController(),
      builder: (_) => Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16))
          ),
        ),
      )
    );
  }
}
