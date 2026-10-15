import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'promo_item_model.dart';
export 'promo_item_model.dart';

class PromoItemWidget extends StatefulWidget {
  const PromoItemWidget({
    super.key,
    Color? tone,
    this.icon,
    String? title,
  })  : this.tone = tone ?? const Color(0xFF800020),
        this.title = title ?? 'Des parfums pour toutes les occasions';

  final Color tone;
  final Widget? icon;
  final String title;

  @override
  State<PromoItemWidget> createState() => _PromoItemWidgetState();
}

class _PromoItemWidgetState extends State<PromoItemWidget> {
  late PromoItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PromoItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget.tone,
          Color(0xFF800020),
        ),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          widget.icon!,
          Expanded(
            flex: 1,
            child: Text(
              valueOrDefault<String>(
                widget.title,
                'Des parfums pour toutes les occasions',
              ),
              maxLines: 2,
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.outfit(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelSmall.fontStyle,
                    lineHeight: 1.4,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ].divide(SizedBox(width: 8.0)),
      ),
    );
  }
}
