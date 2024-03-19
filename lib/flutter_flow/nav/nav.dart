import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? ProfileWidget() : HomePageNewWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? ProfileWidget() : HomePageNewWidget(),
        ),
        FFRoute(
          name: 'Profile',
          path: '/Profile',
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: 'PostDetail',
          path: '/postDetail',
          builder: (context, params) => PostDetailWidget(
            zarId: params.getParam('zarId', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'LoginPin',
          path: '/loginPin',
          builder: (context, params) => LoginPinWidget(
            emailVaue: params.getParam('emailVaue', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'LoginSuccess',
          path: '/loginSuccess',
          builder: (context, params) => LoginSuccessWidget(
            emailVaue: params.getParam('emailVaue', ParamType.String),
          ),
        ),
        FFRoute(
          name: 'Category',
          path: '/category',
          builder: (context, params) => CategoryWidget(
            categoryItem: params.getParam('categoryItem', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'PostNew',
          path: '/postNew',
          builder: (context, params) => PostNewWidget(
            categoryList:
                params.getParam<dynamic>('categoryList', ParamType.JSON, true),
          ),
        ),
        FFRoute(
          name: 'CompanyList',
          path: '/companyList',
          builder: (context, params) => CompanyListWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Friends',
          path: '/friends',
          builder: (context, params) => FriendsWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'PostMy',
          path: '/postMy',
          builder: (context, params) => PostMyWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Message',
          path: '/message',
          builder: (context, params) => MessageWidget(),
        ),
        FFRoute(
          name: 'OnboardingPage',
          path: '/onboardingPage',
          builder: (context, params) => OnboardingPageWidget(),
        ),
        FFRoute(
          name: 'searchScreen',
          path: '/searchScreen',
          builder: (context, params) => SearchScreenWidget(),
        ),
        FFRoute(
          name: 'searchScreenResult',
          path: '/searchScreenResult',
          builder: (context, params) => SearchScreenResultWidget(),
        ),
        FFRoute(
          name: 'PostNewCategory',
          path: '/postNewCategory',
          builder: (context, params) => PostNewCategoryWidget(
            catIds: params.getParam<String>('catIds', ParamType.String, true),
            catIndexs: params.getParam<int>('catIndexs', ParamType.int, true),
            catList: params.getParam<dynamic>('catList', ParamType.JSON, true),
          ),
        ),
        FFRoute(
          name: 'PostNewDetail',
          path: '/postNewDetail',
          builder: (context, params) => PostNewDetailWidget(),
        ),
        FFRoute(
          name: 'PostNewDetailMain',
          path: '/postNewMain',
          builder: (context, params) => PostNewDetailMainWidget(),
        ),
        FFRoute(
          name: 'PostNewDetailImage',
          path: '/postNewImage',
          builder: (context, params) => PostNewDetailImageWidget(),
        ),
        FFRoute(
          name: 'PostNewDetailType',
          path: '/postNewType',
          builder: (context, params) => PostNewDetailTypeWidget(),
        ),
        FFRoute(
          name: 'PostNewPreview',
          path: '/postNewPreview',
          builder: (context, params) => PostNewPreviewWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Order',
          path: '/order',
          builder: (context, params) => OrderWidget(),
        ),
        FFRoute(
          name: 'Settings',
          path: '/settings',
          builder: (context, params) => SettingsWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'HomePageNew',
          path: '/homePage',
          builder: (context, params) => HomePageNewWidget(),
        ),
        FFRoute(
          name: 'PostSaved',
          path: '/postSaved',
          builder: (context, params) => PostSavedWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'CompanyDetail',
          path: '/companyDetail',
          builder: (context, params) => CompanyDetailWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'MessageDetail',
          path: '/messageDetail',
          builder: (context, params) => MessageDetailWidget(),
        ),
        FFRoute(
          name: 'Group',
          path: '/group',
          builder: (context, params) => GroupWidget(
            selectedCategory:
                params.getParam('selectedCategory', ParamType.JSON),
            selectedPost: params.getParam('selectedPost', ParamType.JSON),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/homePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/splash.png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
