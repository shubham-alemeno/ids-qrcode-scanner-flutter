import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ids_qrcode_scanner/features/qrscanner/data/models.dart';

Widget DataDisplayWidget({required Appointment listItem}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("textJaOsh: "), Text(listItem.textJaOsh)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("customerEmail: "), Text(listItem.customerEmail)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("customerFirstName: "), Text(listItem.customerFirstName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("customerFullName: "), Text(listItem.customerFullName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("customerLastName: "), Text(listItem.customerLastName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("customerPhone: "), Text(listItem.customerPhone)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("customerNote: "), Text(listItem.customerNote)],
              ),
              Wrap(
                children: [const Text("customerCancelAppointmentLink: "), Text(listItem.customerCancelAppointmentLink)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("serviceExtras: "), Text(listItem.serviceExtras)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("serviceName: "), Text(listItem.serviceName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("serviceAmount: "), Text(listItem.serviceAmount)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("serviceDuration: "), Text(listItem.serviceDuration)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("categoryName: "), Text(listItem.categoryName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("appointmentDate: "), Text(listItem.appointmentDate)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("appointmentTime: "), Text(listItem.appointmentTime)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("appointmentDateTime: "), Text(listItem.appointmentDateTime)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("appointmentDuration: "), Text(listItem.appointmentDuration)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("appointmentStartTime: "), Text(listItem.appointmentStartTime)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("appointmentEndTime: "), Text(listItem.appointmentEndTime)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("taxAmount: "), Text(listItem.taxAmount)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("numberOfPerson: "), Text(listItem.numberOfPerson)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("discountAmount: "), Text(listItem.discountAmount)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("appointmentStatus: "), Text(listItem.appointmentStatus)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("bookingId: "), Text(listItem.bookingId)],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
