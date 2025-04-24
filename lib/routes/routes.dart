import 'package:badminton_accessories_shop/blocs/auth_cubit/auth_cubit.dart';
import 'package:badminton_accessories_shop/blocs/base_state.dart';
import 'package:badminton_accessories_shop/blocs/refresh_stream_cubit.dart';
import 'package:badminton_accessories_shop/screens/auth/login_screen.dart';
import 'package:badminton_accessories_shop/screens/auth/register_screen.dart';
import 'package:badminton_accessories_shop/screens/auth/reset_password_screen.dart';
import 'package:badminton_accessories_shop/screens/auth/verify_account_screen.dart';
import 'package:badminton_accessories_shop/screens/cart/cart_screen.dart';
import 'package:badminton_accessories_shop/screens/checkout/checkout_screen.dart';
import 'package:badminton_accessories_shop/screens/home/home_screen.dart';
import 'package:badminton_accessories_shop/screens/landing/welcome_screen.dart';
import 'package:badminton_accessories_shop/screens/location/choose_location_screen.dart';
import 'package:badminton_accessories_shop/screens/notification/notification_screen.dart';
import 'package:badminton_accessories_shop/screens/order/order_progress_screen.dart';
import 'package:badminton_accessories_shop/screens/order/order_screen.dart';
import 'package:badminton_accessories_shop/screens/order/review_order_screen.dart';
import 'package:badminton_accessories_shop/screens/payment/choose_payment_method_screen.dart';
import 'package:badminton_accessories_shop/screens/product/category_screen.dart';
import 'package:badminton_accessories_shop/screens/product/filter_screen.dart';
import 'package:badminton_accessories_shop/screens/product/product_detail_screen.dart';
import 'package:badminton_accessories_shop/screens/product/search_screen.dart';
import 'package:badminton_accessories_shop/screens/product/wishlist_screen.dart';
import 'package:badminton_accessories_shop/screens/profile/complete_profile_screen.dart';
import 'package:badminton_accessories_shop/screens/profile/contact_support_screen.dart';
import 'package:badminton_accessories_shop/screens/profile/privacy_policy_screen.dart';
import 'package:badminton_accessories_shop/screens/profile/profile_screen.dart';
import 'package:badminton_accessories_shop/screens/shipping/choose_shipping_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  Routes(this.authCubit) {
    router = GoRouter(
      refreshListenable: RefreshStreamCubit(authCubit.stream),
      redirect: (context, state) {
        if (!authCubit.state.value.isLoggedIn &&
            state.matchedLocation != RegisterScreen.location &&
            authCubit.state.status != StateStatus.loading) {
          return LoginScreen.location;
        }

        return null;
      },
      debugLogDiagnostics: true,
      initialLocation: WelcomeScreen.location,
      navigatorKey: _rootNavigatorKey,
      errorBuilder: (context, state) => const Scaffold(),
      routes: <RouteBase>[
        GoRoute(
          path: WelcomeScreen.path,
          builder: (context, state) => const WelcomeScreen(),
        ),
        GoRoute(
          path: LoginScreen.path,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: RegisterScreen.path,
          builder: (context, state) => const RegisterScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: VerifyAccountScreen.path,
              builder: (context, state) => const VerifyAccountScreen(),
            ),
            GoRoute(
              path: CompleteProfileScreen.path,
              builder: (context, state) => const CompleteProfileScreen(),
            ),
          ],
        ),
        GoRoute(
          path: HomeScreen.path,
          builder: (context, state) => const HomeScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: ProductDetailScreen.path,
              builder: (context, state) => const ProductDetailScreen(),
            ),
            GoRoute(
              path: SearchScreen.path,
              builder: (context, state) => const SearchScreen(),
            ),
            GoRoute(
              path: FilterScreen.path,
              builder: (context, state) => const FilterScreen(),
            ),
            GoRoute(
              path: CategoryScreen.path,
              builder: (context, state) => const CategoryScreen(),
            ),
          ],
        ),
        GoRoute(
          path: WishlistScreen.path,
          builder: (context, state) => const WishlistScreen(),
        ),
        GoRoute(
          path: CartScreen.path,
          builder: (context, state) => const CartScreen(),
        ),
        GoRoute(
          path: CheckoutScreen.path,
          builder: (context, state) => const CheckoutScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: ChooseLocationScreen.path,
              builder: (context, state) => const ChooseLocationScreen(),
            ),
            GoRoute(
              path: ChoosePaymentMethodScreen.path,
              builder: (context, state) => const ChoosePaymentMethodScreen(),
            ),
            GoRoute(
              path: ChooseShippingScreen.path,
              builder: (context, state) => const ChooseShippingScreen(),
            ),
          ],
        ),
        GoRoute(
          path: ProfileScreen.path,
          builder: (context, state) => const ProfileScreen(),
          routes: <RouteBase>[
            GoRoute(
              path: OrderScreen.path,
              builder: (context, state) => const OrderScreen(),
              routes: <RouteBase>[
                GoRoute(
                  path: ReviewOrderScreen.path,
                  builder: (context, state) => const ReviewOrderScreen(),
                ),
                GoRoute(
                  path: OrderProgressScreen.path,
                  builder: (context, state) => const OrderProgressScreen(),
                ),
              ],
            ),
            GoRoute(
              path: ContactSupportScreen.path,
              builder: (context, state) => const ContactSupportScreen(),
            ),
            GoRoute(
              path: PrivacyPolicyScreen.path,
              builder: (context, state) => const PrivacyPolicyScreen(),
            ),
          ],
        ),
        GoRoute(
          path: NotificationScreen.path,
          builder: (context, state) => const NotificationScreen(),
        ),
        GoRoute(
          path: ResetPasswordScreen.path,
          builder: (context, state) => const ResetPasswordScreen(),
        ),
      ],
    );
  }

  late final GoRouter router;
  final AuthCubit authCubit;

  BuildContext get context => _rootNavigatorKey.currentContext!;
}
