import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
// import 'package:json_annotation/json_annotation.dart';

part 'commodity_lot_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CommodityLot {
  String id; // for connecting the DB tables used in commodity ticket
  String commodityTicketId; //  As company or driver needs access
  // to pick up and destination address
  String goodsVehicleId; //vehicle assigned
  String lotNumber; // User facing User facing for refencing any communication
  // till good is either added to ware house or returned

  ////// Bellow 4 data - not required for self transport////////////
  String deliveryNote; // image or PDF of the delivery note (with all details)
  ///////////signed by Contact person mentioned in the commodity ticket  - for showing RTO
  List<String>? listOfMediaPaths; //  for anyone to confirm
  String approvedById; //User id from Users list

  ////////////////// Applicable to all cases /////////////////
  String approximateWeight; //  claimed by the contact person
  String weighbridge; //  Considered final by warehouse as actual inward weight
  String inwardsReceipt; //  a pdf or image given by the warehouse as soon as
  ///good is received but pending doe diligence before storing in warehouse
  String unloaded; //  status of process to store in warehouse
  String processing; //  status of process to store in warehouse
  String qualityCheckPassed; // status of process to store in warehouse
  String qcCertificate; // Final step before storing the commodity,
  ///here commodity owner or contact person can raise dispute and resolve
// So this can be need - owner approval - owner approved and stored in warehouse
//- dispute raised resolution in process - rejected by owner and withdrawn

  CommodityLot({
    this.id = '00000',
    this.commodityTicketId = '00000',
    this.goodsVehicleId = 'not assigned',
    this.lotNumber = 'not assigned',
    this.deliveryNote = 'not available',
    this.listOfMediaPaths,
    this.approvedById = '00000',
    this.approximateWeight = 'not available',
    this.weighbridge = 'not available',
    this.inwardsReceipt = 'not available',
    this.unloaded = 'not available',
    this.processing = 'not available',
    this.qualityCheckPassed = 'not available',
    this.qcCertificate = 'not available',
  });
  factory CommodityLot.fromJson(Map<String, dynamic> json) =>
      _$CommodityLotFromJson(json);

  Map<String, dynamic> toJson() => _$CommodityLotToJson(this);
}

class CommodityLotController extends ChangeNotifier {
  final List<CommodityLot> _commodityLots = [];
  final Uuid _uuid = const Uuid();

  List<CommodityLot> get commodityLots => _commodityLots;

  // Add a function to generate a unique ID for a new commodity ticket.
  String generateUniqueId() {
    return _uuid.v4();
  }

  // Add a function to create a new commodity ticket.
  void addCommodityLot(CommodityLot commodityTicket) {
    _commodityLots.add(commodityTicket);
    notifyListeners();
  }

  // Add a function to edit a commodity ticket.
  void editCommodityLot(CommodityLot commodityTicket) {
    _commodityLots[_commodityLots.indexOf(commodityTicket)] = commodityTicket;
    notifyListeners();
  }

  // Add a function to delete a commodity ticket.
  void deleteCommodityLot(CommodityLot commodityTicket) {
    _commodityLots.remove(commodityTicket);
    notifyListeners();
  }

  // Add a function to serialize a CommodityLot object to JSON.
  String serializeCommodityLotToJson(CommodityLot commodityLot) {
    return jsonEncode(commodityLot.toJson());
  }

  // Add a function to deserialize a JSON string to a CommodityLot object.
  CommodityLot deserializeCommodityLotFromJson(String json) {
    return _$CommodityLotFromJson(jsonDecode(json));
  }
}
