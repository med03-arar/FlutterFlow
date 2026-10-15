import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'gender_tab_femme_model.dart';
export 'gender_tab_femme_model.dart';

class GenderTabFemmeWidget extends StatefulWidget {
  const GenderTabFemmeWidget({
    super.key,
    String? label,
    bool? active,
  })  : this.label = label ?? 'Femme',
        this.active = active ?? true;

  final String label;
  final bool active;

  @override
  State<GenderTabFemmeWidget> createState() => _GenderTabFemmeWidgetState();
}

class _GenderTabFemmeWidgetState extends State<GenderTabFemmeWidget> {
  late GenderTabFemmeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenderTabFemmeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
