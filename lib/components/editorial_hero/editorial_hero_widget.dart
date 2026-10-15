import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'editorial_hero_model.dart';
export 'editorial_hero_model.dart';

class EditorialHeroWidget extends StatefulWidget {
  const EditorialHeroWidget({
    super.key,
    String? imageDesc,
    String? label,
  })  : this.imageDesc = imageDesc ??
            'https://dimg.dreamflow.cloud/v1/image/Luxury%20perfume%20bottle%20on%20marble%20with%20soft%20morning%20shadows',
        this.label = label ?? 'PARFUMS';

  final String imageDesc;
  final String label;

  @override
  State<EditorialHeroWidget> createState() => _EditorialHeroWidgetState();
}

class _EditorialHeroWidgetState extends State<EditorialHeroWidget> {
  late EditorialHeroModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditorialHeroModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  shape: BoxShape.rectangle,
                ),
                child: AspectRatio(
                  aspectRatio: 0.7,
                  child: Image.asset(
                    'assets/images/content-page-dior-miss-dior-2025-miss-dior-essence.jpg',
                    fit: BoxFit.cover,
                    alignment: Alignment(0.0, 0.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.label,
                  'PARFUMS',
                ),
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      font: GoogleFonts.outfit(
                        fontWeight: FontWeight.w300,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w300,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelLarge.fontStyle,
                      decoration: TextDecoration.underline,
                      lineHeight: 1.4,
                    ),
              ),
            ],
          ),
        ),
      ].divide(SizedBox(height: 8.0)),
    );
  }
}
