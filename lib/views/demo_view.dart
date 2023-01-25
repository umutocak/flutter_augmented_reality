// ignore_for_file: depend_on_referenced_packages

import 'package:arkit_plugin/arkit_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vcm;

class DemoView extends StatefulWidget {
  const DemoView({super.key});

  @override
  State<DemoView> createState() => _DemoViewState();
}

class _DemoViewState extends State<DemoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("demo"),
      ),
      body: ARKitSceneView(
        onARKitViewCreated: (c) => onARKitViewCreated(c),
      ),
    );
  }

  void onARKitViewCreated(ARKitController c) {
    var node = ARKitNode(geometry: ARKitBox(width: .1, height: .1, length: .1), position: vcm.Vector3(0, 0, -0.5));
    c.add(node);
  }
}
