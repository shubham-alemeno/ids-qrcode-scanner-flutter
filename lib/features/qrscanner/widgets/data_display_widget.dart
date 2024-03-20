import 'package:flutter/material.dart';
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
                children: [const Text("customerEmail: "), Text(listItem.customerEmail)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Customer First Name: "), Text(listItem.customerFirstName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Customer Last Name: "), Text(listItem.customerLastName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Customer Phone no: "), Text(listItem.customerPhone)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Customer Note: "), Text(listItem.customerNote)],
              ),
              // Line Break-------------------------->
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Service Name: "), Text(listItem.serviceName)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Appointment Status: "), Text(listItem.appointmentStatus)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Booking ID: "), Text(listItem.bookingId)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Appointment Date: "), Text(listItem.appointmentDate)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Appointment Time: "), Text(listItem.appointmentTime)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("No. of Persons: "), Text(listItem.numberOfPerson)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Service Extras: "), Text(listItem.serviceExtras)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Service Amount: "), Text(listItem.serviceAmount)],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Tax Amount: "), Text(listItem.taxAmount)],
              ),
              // Wrap(
              //   children: [const Text("customerCancelAppointmentLink: "), Text(listItem.customerCancelAppointmentLink)],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [const Text("serviceDuration: "), Text(listItem.serviceDuration)],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [const Text("categoryName: "), Text(listItem.categoryName)],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [const Text("appointmentDateTime: "), Text(listItem.appointmentDateTime)],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [const Text("appointmentDuration: "), Text(listItem.appointmentDuration)],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [const Text("appointmentStartTime: "), Text(listItem.appointmentStartTime)],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [const Text("appointmentEndTime: "), Text(listItem.appointmentEndTime)],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [const Text("discountAmount: "), Text(listItem.discountAmount)],
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}
