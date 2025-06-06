import 'package:easy_localization/easy_localization.dart';

class UserBookingModel {
  String? name;
  String? star;
  String? date;
  String? phno;
  String? option;
  String? repMethode;
  String? day;
  String? godname;
  String? vazhipadu;
  String? price;
  String? count;
  String? totalPrice;

  UserBookingModel({
    this.name,
    this.star,
    this.phno,
    this.date,
    this.option,
    this.repMethode,
    this.day,
    this.godname,
    this.vazhipadu,
    this.price,
    this.count,
    this.totalPrice,
  });
}


final userBooking = UserBookingModel(
  name: "",
  star: "".tr(),
  phno: "",
  date: "",
  option: "",
  repMethode: "",
  day: "",
  godname: "",
  vazhipadu: "",
  price: "",
  count: "",
  totalPrice: "",
);
