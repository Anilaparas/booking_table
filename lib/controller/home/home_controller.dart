import 'package:booking_table/controller/user_session/user_session_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static final HomeController homeController = HomeController._internal();

  factory HomeController() {
    return homeController;
  }

  HomeController._internal();

  @override
  void onInit() {
    // TODO: implement onInit
    print(UserSessionController().isLogin);
    super.onInit();
  }

  var selectedIndex = 0.obs;
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  var serviceType = ''.obs;
  var likedRestaurant = false.obs;
  var restaurantFilter = true.obs;
  void updateRestaurantLike() {
    likedRestaurant.value = !likedRestaurant.value;
    update();
  }
}
