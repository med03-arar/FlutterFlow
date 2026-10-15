import '/components/button/button_widget.dart';
import '/components/filter_chip/filter_chip_widget.dart';
import '/components/inventory_item/inventory_item_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_inventory_model.dart';
export 'product_inventory_model.dart';

class ProductInventoryWidget extends StatefulWidget {
  const ProductInventoryWidget({super.key});

  static String routeName = 'ProductInventory';
  static String routePath = '/productInventory';

  @override
  State<ProductInventoryWidget> createState() => _ProductInventoryWidgetState();
}

class _ProductInventoryWidgetState extends State<ProductInventoryWidget> {
  late ProductInventoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductInventoryModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                                (FFMainAxisAlignment.spaceEvenly).flutterValue,
                            children: [
                              Icon(
                                Icons.arrow_back,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/vnimc_1.png',
                                    width: 225.6,
                                    height: 79.01,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: wrapWithModel(
                                  model: _model.textFieldModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: TextFieldWidget(
                                    label: '',
                                    labelPresent: false,
                                    helper: '',
                                    helperPresent: false,
                                    leadingIcon: Icon(
                                      Icons.search_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                    leadingIconPresent: true,
                                    trailingIconPresent: false,
                                    hint: 'Search name, brand, SKU...',
                                    value: '',
                                    onChange: '',
                                    onSubmit: '',
                                    variant: 'filled',
                                    error: false,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Container(
                                    child: Icon(
                                      Icons.tune_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                    ),
                  ),
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 86.6,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
                child: Container(
                  child: Container(
                    height: 28.0,
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  wrapWithModel(
                                    model: _model.filterChipModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      label: 'All Products',
                                      selected: true,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.filterChipModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      label: 'Soin',
                                      selected: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.filterChipModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      label: 'Maquillage',
                                      selected: false,
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.filterChipModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: FilterChipWidget(
                                      label: 'Parfum',
                                      selected: false,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: SingleChildScrollView(
                  primary: false,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'xkyrkbsl' /* 124 Products */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelLarge
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .fontStyle,
                                              lineHeight: 1.4,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'glv7u2d9' /* Sort by: Newest */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  font: GoogleFonts.outfit(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelLarge
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelLarge
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18.0,
                                          ),
                                        ].divide(SizedBox(width: 4.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inventoryItemModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: InventoryItemWidget(
                                  brand: 'Maison Francis Kurkdjian',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/luxury%20red%20perfume%20bottle',
                                  name: 'Baccarat Rouge 540',
                                  price: '850.00',
                                  stock: '12',
                                  type: 'Eau de Parfum',
                                  volume: '100ml',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inventoryItemModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: InventoryItemWidget(
                                  brand: 'Byredo',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/clear%20glass%20perfume%20bottle%20with%20black%20cap',
                                  name: 'Jazz Club Les Parfums',
                                  price: '420.00',
                                  stock: '4',
                                  type: 'Eau de Toilette',
                                  volume: '100ml',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inventoryItemModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: InventoryItemWidget(
                                  brand: 'Dior',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/modern%20blue%20glass%20perfume%20bottle',
                                  name: 'Sauvage Elixir',
                                  price: '450.00',
                                  stock: '8',
                                  type: 'Parfum',
                                  volume: '100ml',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inventoryItemModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: InventoryItemWidget(
                                  brand: 'Tom Ford',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/dark%20square%20perfume%20bottle',
                                  name: 'Oud Wood',
                                  price: '620.00',
                                  stock: '2',
                                  type: 'Extrait de Parfum',
                                  volume: '100ml',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inventoryItemModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: InventoryItemWidget(
                                  brand: 'Lancôme',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/ornate%20pink%20perfume%20bottle',
                                  name: 'La Vie Est Belle',
                                  price: '290.00',
                                  stock: '18',
                                  type: 'Eau de Parfum',
                                  volume: '75ml',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.inventoryItemModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: InventoryItemWidget(
                                  brand: 'D.S. & DURGA',
                                  imgDesc:
                                      'https://dimg.dreamflow.cloud/v1/image/dark%20purple%20perfume%20bottle',
                                  name: 'Nuit Étoilée',
                                  price: '310.00',
                                  stock: '15',
                                  type: 'Eau de Parfum',
                                  volume: '100ml',
                                ),
                              ),
                            ].divide(SizedBox(height: 0.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).alternate,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  'acb92p0v' /* Total Valuation */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      font: GoogleFonts.outfit(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
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
                              Text(
                                FFLocalizations.of(context).getText(
                                  'sa6o3kgj' /* 142,500 TND */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      font: GoogleFonts.outfit(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                      lineHeight: 1.45,
                                    ),
                              ),
                            ],
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(AuthenticationWidget.routeName);
                            },
                            child: wrapWithModel(
                              model: _model.buttonModel,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                icon: Icon(
                                  Icons.assessment_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                iconPresent: true,
                                iconEndPresent: false,
                                content: 'Inventory Report',
                                variant: 'outline',
                                size: 'medium',
                                fullWidth: false,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
