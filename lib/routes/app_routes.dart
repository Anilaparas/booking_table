import 'package:booking_table/bindings/auth_bindings.dart';
import 'package:booking_table/view/auth_screens/auth_selection_view.dart';
import 'package:booking_table/view/book_a_table/booking_details_view.dart';
import 'package:booking_table/view/home_screen/filter_view.dart';
import 'package:booking_table/view/home_screen/restaurant_details_view.dart';
import 'package:booking_table/view/profile_screen/profile_view.dart';
import 'package:booking_table/view/service_type/full_service_summary_view.dart';
import 'package:booking_table/view/service_type/mid_service_summary_view.dart';
import 'package:get/get.dart';

import '/routes/route_name.dart';
import '/view/auth_screens/get_zip_code_view.dart';
import '/view/auth_screens/otp_view.dart';
import '/view/auth_screens/sign_in_view.dart';
import '/view/book_a_table/book_a_table_view.dart';
import '/view/favourite/favourite_view.dart';
import '/view/home_screen/home_view.dart';
import '/view/notifications/notification_view.dart';
import '/view/payment/add_card_details_view.dart';
import '/view/payment/payment_done_view.dart';
import '/view/privacy_policy/privacy_policy_view.dart';
import '/view/rate/rate_review_view.dart';
import '/view/reservation/reservation_view.dart';
import '/view/service_type/pre_order_view.dart';
import '/view/splash_screen/splash_view.dart';
import '/view/support/support_view.dart';
import '/view/terms_n_conditions/terms_n_conditions_view.dart';
import '../bindings/home_bindings.dart';
import '../view/home_screen/filter_result_view.dart';
import '../view/payment/payment_method_view.dart';

class AppRoutes {
  static final appRoutes = [
    GetPage(
      name: RouteName.splash,
      page: () => const SplashView(),
      // binding: AuthBindings(),
    ),
    GetPage(
      name: RouteName.createProfile,
      page: () => ProfileView(callFrom: 'Create Profile'),
      // binding: ,
    ),
    GetPage(
      name: RouteName.authSelectionScreen,
      page: () => const AuthSelectionView(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => SignInView(callFrom: 'Login'),
      binding: AuthBindings(),
    ),
    GetPage(
      name: RouteName.register,
      page: () => SignInView(callFrom: 'Register'),
      binding: AuthBindings(),
    ),
    GetPage(
      name: RouteName.loginOTP,
      page: () => OtpView(callFrom: 'Login'),
      binding: AuthBindings(),
    ),
    GetPage(
      name: RouteName.registerOTP,
      page: () => OtpView(callFrom: 'Register'),
      binding: AuthBindings(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomeView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: RouteName.support, page: () => const SupportView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.favourite, page: () => const FavouriteView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.notifications, page: () => NotificationView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.addCardDetails,
      page: () => const AddCreditCardDetailsView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.paymentDone, page: () => const PaymentDoneView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.privacyPolicy, page: () => const PrivacyPolicyView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.termsNConditions,
      page: () => const TermsNConditionsView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.reviews, page: () => const RateReviewView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.paymentDone, page: () => const PaymentDoneView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.reservation, page: () => const ReservationView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.fullService,
      page: () => FullServiceSummaryView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.fullServicePreOrder,
      page: () => FullServiceSummaryView(callFrom: 'Pre Order'),
      // binding: ,
    ),
    GetPage(
      name: RouteName.midService,
      page: () => MidServiceSummaryView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.preOrder, page: () => PreOrderView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.bookingDetailsUpcoming,
      page: () => BookingDetailsView(callFrom: 'Upcoming'),
      // binding: ,
    ),
    GetPage(
      name: RouteName.bookingDetailsPrevious,
      page: () => BookingDetailsView(callFrom: 'Previous'),
      // binding: ,
    ),
    GetPage(
      name: RouteName.bookATable,
      page: () => BookATableView(
        callFrom: 'book',
      ),
      // binding: ,
    ),
    GetPage(
      name: RouteName.editATable,
      page: () => BookATableView(
        callFrom: 'edit',
      ),
      // binding: ,
    ),
    GetPage(
      name: RouteName.zipCodeView, page: () => const GetZipCodeView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.editProfile,
      page: () => ProfileView(
        callFrom: 'Edit',
      ),
      // binding: ,
    ),
    GetPage(
      name: RouteName.filterScreen, page: () => FilterView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.filterResultScreen,
      page: () => const FilterResultView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.paymentMethod, page: () => const PaymentMethodView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.restaurantDetails,
      page: () => const RestaurantDetailView(),
      // binding: ,
    ),
    GetPage(
      name: RouteName.preOrder,
      page: () => PreOrderView(),
      // binding: ,
    ),
  ];
}
