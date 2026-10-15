import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'report_stat_card_model.dart';
export 'report_stat_card_model.dart';

class ReportStatCardWidget extends StatefulWidget {
  const ReportStatCardWidget({
    super.key,
    Color? color,
    bool? hasTrend,
    this.icon,
    String? label,
    String? trend,
    String? value,
    bool? isUp,
  })  : this.color = color ?? const Color(0x00000000),
        this.hasTrend = hasTrend ?? true,
        this.label = label ?? 'Total Profit',
        this.trend = trend ?? '+12%',
        this.value = value ?? '12,450 TND',
        this.isUp = isUp ?? true;

  final Color color;
  final bool hasTrend;
  final Widget? icon;
  final String label;
  final String trend;
  final String value;
  final bool isUp;

  @override
  State<ReportStatCardWidget> createState() => _ReportStatCardWidgetState();
}

class _ReportStatCardWidgetState extends State<ReportStatCardWidget> {
  late ReportStatCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReportStatCardModel());

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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.icon!,
                  Text(
                    valueOrDefault<String>(
                      widget.label,
                      'Total Profit',
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          font: GoogleFonts.outfit(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                          lineHeight: 1.3,
                        ),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
              Text(
                valueOrDefault<String>(
                  widget.value,
                  '12,450 TND',
                ),
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      font: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleLarge.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              if (valueOrDefault<bool>(
                widget.hasTrend,
                true,
              ))
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 14.0,
                      height: 14.0,
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          if (valueOrDefault<bool>(
                            valueOrDefault<bool>(
                              widget.isUp,
                              true,
                            )
                                ? true
                                : false,
                            true,
                          ))
                            Icon(
                              Icons.arrow_upward_rounded,
                              color: valueOrDefault<Color>(
                                valueOrDefault<bool>(
                                  widget.isUp,
                                  true,
                                )
                                    ? FlutterFlowTheme.of(context).success
                                    : FlutterFlowTheme.of(context).error,
                                FlutterFlowTheme.of(context).success,
                              ),
                              size: 14.0,
                            ),
                          if (valueOrDefault<bool>(
                            valueOrDefault<bool>(
                              widget.isUp,
                              true,
                            )
                                ? false
                                : true,
                            false,
                          ))
                            Icon(
                              Icons.arrow_downward_rounded,
                              color: valueOrDefault<Color>(
                                valueOrDefault<bool>(
                                  widget.isUp,
                                  true,
                                )
                                    ? FlutterFlowTheme.of(context).success
                                    : FlutterFlowTheme.of(context).error,
                                FlutterFlowTheme.of(context).success,
                              ),
                              size: 14.0,
                            ),
                        ],
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.trend,
                        '+12%',
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.outfit(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color: valueOrDefault<Color>(
                              valueOrDefault<bool>(
                                widget.isUp,
                                true,
                              )
                                  ? FlutterFlowTheme.of(context).success
                                  : FlutterFlowTheme.of(context).error,
                              FlutterFlowTheme.of(context).success,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                            lineHeight: 1.2,
                          ),
                    ),
                  ].divide(SizedBox(width: 4.0)),
                ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
      ),
    );
  }
}
