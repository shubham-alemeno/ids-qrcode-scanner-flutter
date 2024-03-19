// // {
// //   "text_jaOsh": "",
// //   "customer_email": "priyansh.bubber@gmail.com",
// //   "customer_first_name": "GIRAJ",
// //   "customer_full_name": "",
// //   "customer_last_name": "ENTERPRISES",
// //   "customer_phone": "+91  75687 77222",
// //   "customer_note": "",
// //   "customer_cancel_appointment_link": "https://indiandreamstudio.com/?bpa_cancel=NDE=&cancel_id=akZuxXGu90",
// //   "service_extras": "",
// //   "service_name": "(Turbo) Pre-wedding Shoot",
// //   "service_amount": "\u20b915,000",
// //   "service_duration": "4 Hours",
// //   "category_name": "Pre-wedding",
// //   "appointment_date": "31-03-2024",
// //   "appointment_time": "4:00 pm - 8:00 pm",
// //   "appointment_date_time": "31-03-2024 4:00 pm",
// //   "appointment_duration": "4 Hours ",
// //   "appointment_start_time": "4:00 pm",
// //   "appointment_end_time": "8:00 pm",
// //   "tax_amount": "\u20b92,700",
// //   "number_of_person": "1",
// //   "discount_amount": "\u20b90",
// //   "appointment_status": "Approved",
// //   "booking_id": "#IDS-00041"
// // }

// import 'package:json_annotation/json_annotation.dart';

// part 'models.g.dart';

// @JsonSerializable()
// class Appointment {
//   final String? textJaOsh;
//   final String? customerEmail;
//   final String? customerFirstName;
//   final String? customerFullName;
//   final String? customerLastName;
//   final String? customerPhone;
//   final String? customerNote;
//   final String? customerCancelAppointmentLink;
//   final String? serviceExtras;
//   final String? serviceName;
//   final String? serviceAmount;
//   final String? serviceDuration;
//   final String? categoryName;
//   final String? appointmentDate;
//   final String? appointmentTime;
//   final String? appointmentDateTime;
//   final String? appointmentDuration;
//   final String? appointmentStartTime;
//   final String? appointmentEndTime;
//   final String? taxAmount;
//   final String? numberOfPerson;
//   final String? discountAmount;
//   final String? appointmentStatus;
//   final String? bookingId;

//   Appointment({
//     this.textJaOsh,
//     this.customerEmail,
//     this.customerFirstName,
//     this.customerFullName,
//     this.customerLastName,
//     this.customerPhone,
//     this.customerNote,
//     this.customerCancelAppointmentLink,
//     this.serviceExtras,
//     this.serviceName,
//     this.serviceAmount,
//     this.serviceDuration,
//     this.categoryName,
//     this.appointmentDate,
//     this.appointmentTime,
//     this.appointmentDateTime,
//     this.appointmentDuration,
//     this.appointmentStartTime,
//     this.appointmentEndTime,
//     this.taxAmount,
//     this.numberOfPerson,
//     this.discountAmount,
//     this.appointmentStatus,
//     this.bookingId,
//   });

//   factory Appointment.fromJson(Map<String, dynamic> map) => _$AppointmentFromJson(map);

//   Map<String, dynamic> toJson() => _$AppointmentToJson(this);
// }


class Appointment {
  final String textJaOsh;
  final String customerEmail;
  final String customerFirstName;
  final String customerFullName;
  final String customerLastName;
  final String customerPhone;
  final String customerNote;
  final String customerCancelAppointmentLink;
  final String serviceExtras;
  final String serviceName;
  final String serviceAmount;
  final String serviceDuration;
  final String categoryName;
  final String appointmentDate;
  final String appointmentTime;
  final String appointmentDateTime;
  final String appointmentDuration;
  final String appointmentStartTime;
  final String appointmentEndTime;
  final String taxAmount;
  final String numberOfPerson;
  final String discountAmount;
  final String appointmentStatus;
  final String bookingId;

  Appointment({
    required this.textJaOsh,
    required this.customerEmail,
    required this.customerFirstName,
    required this.customerFullName,
    required this.customerLastName,
    required this.customerPhone,
    required this.customerNote,
    required this.customerCancelAppointmentLink,
    required this.serviceExtras,
    required this.serviceName,
    required this.serviceAmount,
    required this.serviceDuration,
    required this.categoryName,
    required this.appointmentDate,
    required this.appointmentTime,
    required this.appointmentDateTime,
    required this.appointmentDuration,
    required this.appointmentStartTime,
    required this.appointmentEndTime,
    required this.taxAmount,
    required this.numberOfPerson,
    required this.discountAmount,
    required this.appointmentStatus,
    required this.bookingId,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) {
    return Appointment(
      textJaOsh: json['text_jaOsh'] ?? "",
      customerEmail: json['customer_email'] ?? "",
      customerFirstName: json['customer_first_name'] ?? "",
      customerFullName: json['customer_full_name'] ?? "",
      customerLastName: json['customer_last_name'] ?? "",
      customerPhone: json['customer_phone'] ?? "",
      customerNote: json['customer_note'] ?? "",
      customerCancelAppointmentLink: json['customer_cancel_appointment_link'] ?? "",
      serviceExtras: json['service_extras'] ?? "",
      serviceName: json['service_name'] ?? "",
      serviceAmount: json['service_amount'] ?? "",
      serviceDuration: json['service_duration'] ?? "",
      categoryName: json['category_name'] ?? "",
      appointmentDate: json['appointment_date'] ?? "",
      appointmentTime: json['appointment_time'] ?? "",
      appointmentDateTime: json['appointment_date_time'] ?? "",
      appointmentDuration: json['appointment_duration'] ?? "",
      appointmentStartTime: json['appointment_start_time'] ?? "",
      appointmentEndTime: json['appointment_end_time'] ?? "",
      taxAmount: json['tax_amount'] ?? "",
      numberOfPerson: json['number_of_person'] ?? "",
      discountAmount: json['discount_amount'] ?? "",
      appointmentStatus: json['appointment_status'] ?? "",
      bookingId: json['booking_id'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text_jaOsh': textJaOsh,
      'customer_email': customerEmail,
      'customer_first_name': customerFirstName,
      'customer_full_name': customerFullName,
      'customer_last_name': customerLastName,
      'customer_phone': customerPhone,
      'customer_note': customerNote,
      'customer_cancel_appointment_link': customerCancelAppointmentLink,
      'service_extras': serviceExtras,
      'service_name': serviceName,
      'service_amount': serviceAmount,
      'service_duration': serviceDuration,
      'category_name': categoryName,
      'appointment_date': appointmentDate,
      'appointment_time': appointmentTime,
      'appointment_date_time': appointmentDateTime,
      'appointment_duration': appointmentDuration,
      'appointment_start_time': appointmentStartTime,
      'appointment_end_time': appointmentEndTime,
      'tax_amount': taxAmount,
      'number_of_person': numberOfPerson,
      'discount_amount': discountAmount,
      'appointment_status': appointmentStatus,
      'booking_id': bookingId,
    };
  }
}
