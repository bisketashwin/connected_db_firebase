import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
// import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_emulators/firebase_emulators.dart';

part 'commodity_ticket_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CommodityTicket {
  String id;
  String commodityOwnerId;
  String contactPersonId;
  String pickUpAddressId;
  String destinationAddressId;
  List<String> lotIds;
  String ticketNumber;
  String goodMovement;
  String commodity;
  String quantity;
  String transportType;
  String status;
  String message;
  DateTime pickupDate;

  CommodityTicket({
    required this.id,
    this.commodityOwnerId = 'Not Generated',
    this.pickUpAddressId = 'Not Generated',
    this.destinationAddressId = 'Not Generated',
    this.contactPersonId = 'Not Generated',
    this.lotIds = const ['not available'],
    this.ticketNumber = 'Not Generated',
    required this.goodMovement,
    required this.commodity,
    required this.quantity,
    this.transportType = 'Company',
    this.status = 'Yet to Start',
    this.message = '',
    required this.pickupDate,
  });

  factory CommodityTicket.fromJson(Map<String, dynamic> json) =>
      _$CommodityTicketFromJson(json);

  Map<String, dynamic> toJson() => _$CommodityTicketToJson(this);
}

// final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class CommodityTicketController extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final Uuid _uuid = const Uuid();

  CollectionReference get _commodityTicketsRef =>
      _firestore.collection('commodity_tickets');

  /// Gets a list of all commodity tickets.
  Future<List<CommodityTicket>> getCommodityTickets() async {
    // Get the QuerySnapshot object.
    QuerySnapshot<Object?> querySnapshot = await _commodityTicketsRef.get();

    // Create a list to store the CommodityTicket objects.
    List<CommodityTicket> commodityTickets = [];

    // Iterate over the DocumentSnapshot objects in the QuerySnapshot object.
    for (DocumentSnapshot<Object?> documentSnapshot in querySnapshot.docs) {
      Map<String, dynamic> data =
          documentSnapshot.data() as Map<String, dynamic>;

      // Get the CommodityTicket object from the DocumentSnapshot object.
      CommodityTicket commodityTicket = CommodityTicket.fromJson(data);

      // Add the CommodityTicket object to the list.
      commodityTickets.add(commodityTicket);
    }

    // Return the list of CommodityTicket objects.
    return commodityTickets;
  }

  /// Adds a new commodity ticket to the database.
  void addCommodityTicket(CommodityTicket commodityTicket) async {
    commodityTicket.id = _uuid.v4();

    await _commodityTicketsRef
        .doc(commodityTicket.id)
        .set(commodityTicket.toJson());

    // Notify all listeners that the data has changed.
    notifyListeners();
  }

  /// Edits a commodity ticket in the database.
  void editCommodityTicket(CommodityTicket commodityTicket) async {
    await _commodityTicketsRef
        .doc(commodityTicket.id)
        .update(commodityTicket.toJson());
  }
}
