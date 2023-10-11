import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';

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

class CommodityTicketController extends ChangeNotifier {
  final List<CommodityTicket> _commodityTickets = [];
  final Uuid _uuid = const Uuid();

  List<CommodityTicket> get commodityTickets => _commodityTickets;

  // Add a function to generate a unique ID for a new commodity ticket.
  String generateUniqueId() {
    return _uuid.v4();
  }

  // Add a function to serialize a CommodityTicket object to JSON.
  String serializeCommodityTicketToJson(CommodityTicket commodityTicket) {
    return jsonEncode(commodityTicket.toJson());
  }

  // Add a function to deserialize a JSON string to a CommodityTicket object.
  CommodityTicket deserializeCommodityTicketFromJson(String json) {
    return _$CommodityTicketFromJson(jsonDecode(json));
  }

  // Add a function to create a new commodity ticket.
  void addCommodityTicket(CommodityTicket commodityTicket) {
    _commodityTickets.add(commodityTicket);
    notifyListeners();
  }

  // Add a function to edit a commodity ticket.
  void editCommodityTicket(CommodityTicket commodityTicket) {
    _commodityTickets[_commodityTickets.indexOf(commodityTicket)] =
        commodityTicket;
    notifyListeners();
  }

  // Add a function to delete a commodity ticket.
  void deleteCommodityTicket(CommodityTicket commodityTicket) {
    _commodityTickets.remove(commodityTicket);
    notifyListeners();
  }
}
