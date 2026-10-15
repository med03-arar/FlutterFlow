import '/components/category_item/category_item_widget.dart';
import '/components/category_item_copy/category_item_copy_widget.dart';
import '/components/gender_tab/gender_tab_widget.dart';
import '/components/gender_tab_copy/gender_tab_copy_widget.dart';
import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'menu_model.dart';
export 'menu_model.dart';

/// Create a minimalist and elegant mobile Menu page for a luxury perfume
/// shopping app called **L’ESSENCE ELYSÉE**, inspired by the Pull&Bear mobile
/// app menu screenshot.
///
/// Use a clean white background, black typography, thin gray separators,
/// generous spacing, and a premium editorial style. The page must be simple,
/// vertically scrollable, and easy to navigate.
///
/// **1. Top category selector**
/// - Display two tabs at the top: “Femme” on the left and “Homme” on the
/// right.
/// - Use black bold text for the selected tab and gray text for the inactive
/// tab.
/// - Add a thin horizontal divider below the tabs.
/// - When the user selects Femme or Homme, update the displayed categories
/// accordingly.
///
/// **2. Search bar**
/// - Place a large rectangular search field below the tabs.
/// - Use a thin black border, white background, and a search icon on the
/// left.
/// - Display the placeholder “Rechercher un parfum”.
/// - Keep the design minimal, without rounded corners.
/// - Tapping the field should allow users to search for perfumes.
///
/// **3. Nouveautés section**
/// - Add a bold heading “Nouveautés”.
/// - Make the heading clickable to navigate to the latest perfume products.
/// - Add enough vertical spacing to create a clean editorial layout.
///
/// **4. Collections section**
/// - Add a bold heading “Collections” with a minus icon on the right to
/// indicate that the section is expanded.
/// - Under the heading, display a vertical list of clickable categories with
/// large black text and generous spacing.
///
/// For the **Femme** tab, display:
/// - Tous les parfums
/// - Nouveautés
/// - Parfums floraux
/// - Parfums fruités
/// - Parfums orientaux
/// - Parfums frais
/// - Eau de parfum
/// - Eau de toilette
/// - Coffrets cadeaux
///
/// For the **Homme** tab, display:
/// - Tous les parfums
/// - Nouveautés
/// - Parfums boisés
/// - Parfums frais
/// - Parfums épicés
/// - Parfums orientaux
/// - Eau de parfum
/// - Eau de toilette
/// - Coffrets cadeaux
///
/// **5. Bottom navigation bar**
/// Create a fixed bottom navigation bar with five items:
/// - Accueil — home icon
/// - Inspiration — image or shuffle icon
/// - Menu — search icon
/// - Panier — shopping bag icon
/// - Mon compte — user icon
///
/// Use thin gray icons and gray labels for inactive items. Highlight Menu in
/// black because this is the active page. Add a thin gray separator above the
/// navigation bar.
///
/// **6. Design and behavior**
/// - Use a white background and black text.
/// - Use a clean sans-serif font such as Inter.
/// - Headings should be bold, and category names should use regular-weight
/// text.
/// - Keep the search field rectangular and the layout similar to the provided
/// screenshot.
/// - Make the content vertically scrollable while keeping the bottom
/// navigation fixed.
/// - Ensure the page adapts to different mobile screen sizes.
/// - Use reusable components for the category tabs and category list.
/// - Connect each category to a corresponding product listing page.
/// - Do not add product images, colorful cards, promotional banners, or
/// unnecessary decorations.
///
/// Use the provided screenshot only as a layout reference. Keep the branding
/// consistent with L’ESSENCE ELYSÉE and the uploaded logo.
class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  static String routeName = 'menu';
  static String routePath = '/menu';

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pushNamed(AcceuilWidget.routeName);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'k75oqnd7' /* Back */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    font: GoogleFonts.playfairDisplay(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'zqh3c3sk' /* Menu */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.outfit(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
          child: Stack(
            alignment: AlignmentDirectional(-1.0, -1.0),
            children: [
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: wrapWithModel(
                              model: _model.genderTabCopyModel,
                              updateCallback: () => safeSetState(() {}),
                              child: GenderTabCopyWidget(
                                label: 'Femme',
                                active: false,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(MenuCopyWidget.routeName);
                              },
                              child: wrapWithModel(
                                model: _model.genderTabModel,
                                updateCallback: () => safeSetState(() {}),
                                child: GenderTabWidget(
                                  label: FFLocalizations.of(context).getText(
                                    '7xcr95wl' /* Homme */,
                                  ),
                                  active: false,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 0.0,
                      thickness: 1.0,
                      indent: 0.0,
                      endIndent: 0.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.search_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                                Expanded(
                                  child: Container(
                                    width: 200.0,
                                    child: TextFormField(
                                      controller: _model.textController,
                                      focusNode: _model.textFieldFocusNode,
                                      autofocus: false,
                                      enabled: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          '022rbqsc' /* Search product... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium
                                                      .fontStyle,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      enableInteractiveSelection: true,
                                      validator: _model.textControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: Container(
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'l2lmysdt' /* Nouveautés */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                          ProductInventoryWidget.routeName);
                                    },
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'p6asnd3x' /* Collections */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.outfit(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.showParfum = !_model.showParfum;
                                      safeSetState(() {});
                                    },
                                    child: Icon(
                                      Icons.remove_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              if (_model.showParfum)
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    wrapWithModel(
                                      model: _model.categoryItemModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CategoryItemWidget(
                                        label: 'Tout Voir',
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          (FFMainAxisAlignment.spaceBetween)
                                              .flutterValue,
                                      crossAxisAlignment:
                                          (FFCrossAxisAlignment.start)
                                              .flutterValue,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        wrapWithModel(
                                          model: _model.categoryItemCopyModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: CategoryItemCopyWidget(
                                            label: 'Parfum',
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showParfums =
                                                  !_model.showParfums;
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (_model.showParfums)
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.categoryItemModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums floraux',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums fruités',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums orientaux',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums frais',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Eau de parfum',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Eau de toilette',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel8,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Coffrets cadeaux',
                                            ),
                                          ),
                                        ],
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          (FFMainAxisAlignment.spaceBetween)
                                              .flutterValue,
                                      crossAxisAlignment:
                                          (FFCrossAxisAlignment.start)
                                              .flutterValue,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        wrapWithModel(
                                          model: _model.categoryItemModel9,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: CategoryItemWidget(
                                            label: 'Soin',
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showSoin =
                                                  !_model.showSoin;
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (_model.showSoin)
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.categoryItemModel10,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums floraux',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel11,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums fruités',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel12,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums orientaux',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel13,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums frais',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel14,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Eau de parfum',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel15,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Eau de toilette',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel16,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Coffrets cadeaux',
                                            ),
                                          ),
                                        ],
                                      ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          (FFMainAxisAlignment.spaceBetween)
                                              .flutterValue,
                                      crossAxisAlignment:
                                          (FFCrossAxisAlignment.start)
                                              .flutterValue,
                                      textBaseline: TextBaseline.alphabetic,
                                      children: [
                                        wrapWithModel(
                                          model: _model.categoryItemCopyModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: CategoryItemCopyWidget(
                                            label: 'Maquillage',
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.showMaquillage =
                                                  !_model.showMaquillage;
                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (_model.showMaquillage)
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.categoryItemModel17,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums floraux',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel18,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums fruités',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel19,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums orientaux',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel20,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Parfums frais',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel21,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Eau de parfum',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel22,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Eau de toilette',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.categoryItemModel23,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: CategoryItemWidget(
                                              label: 'Coffrets cadeaux',
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                        ].divide(SizedBox(height: 32.0)),
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment:
                            (FFMainAxisAlignment.center).flutterValue,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 50.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(AcceuilWidget.routeName);
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '0j4238dj' /* Home */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 50.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(MenuWidget.routeName);
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.menu,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'eudkr9pw' /* Menu */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 50.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(PanierWidget.routeName);
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.shopping_bag_sharp,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'rtuue80m' /* My cart */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(AuthenticationWidget.routeName);
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.person_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 24.0,
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '7oqkelpb' /* Account */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Divider(
                        height: 16.0,
                        thickness: 1.0,
                        indent: 0.0,
                        endIndent: 0.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
