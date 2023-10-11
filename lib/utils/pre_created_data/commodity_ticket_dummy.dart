import '../models/models.dart';

CommodityTicket commodityTicket1() {
  return CommodityTicket(
    id: '00001',
    ticketNumber: '00001',
    commodityOwnerId: '00001',
    contactPersonId: '00001',
    pickUpAddressId: '00001',
    destinationAddressId: '00001',
    goodMovement: 'Inward',
    commodity: 'Grapes',
    quantity: '120 MT',
    status: 'Attention',
    message: 'Good vehciles not assinged; Call us; Change to Self Transport',
    pickupDate: DateTime.parse('2023-09-27 16:00:00Z'),
  );
}

CommodityLot commTicket1CommodityLot1() {
  return CommodityLot(
      id: "00001",
      commodityTicketId: "00001",
      goodsVehicleId: "00006",
      lotNumber: "LOT-00001",
      deliveryNote: "/path/to/delivery_note.pdf",
      listOfMediaPaths: [
        "/path/to/media_1.jpg",
        "/path/to/media_2.jpg",
        "/path/to/media_3.jpg"
      ],
      approvedById: "1234567890",
      approximateWeight: "100",
      weighbridge: "90",
      inwardsReceipt: "/path/to/inwards_receipt.pdf",
      unloaded: "true",
      processing: "false",
      qualityCheckPassed: "false",
      qcCertificate: "/path/to/qc_certificate.pdf");
}

CommodityTicket commodityTicket2() {
  return CommodityTicket(
    id: '00002',
    ticketNumber: '00002',
    commodityOwnerId: '00002',
    contactPersonId: '00002',
    pickUpAddressId: '00002',
    destinationAddressId: '00002',
    goodMovement: 'Inward',
    commodity: 'Wheat',
    quantity: '100 MT',
    transportType: 'self',
    status: 'In Progress',
    pickupDate: DateTime.parse('2023-10-03 08:00:00Z'),
  );
}

CommodityTicket commodityTicket3() {
  return CommodityTicket(
    id: '00003',
    ticketNumber: '00003',
    commodityOwnerId: '00003',
    contactPersonId: '00003',
    pickUpAddressId: '00003',
    destinationAddressId: '00003',
    goodMovement: 'Outward',
    commodity: 'Rice',
    quantity: '80 MT',
    status: 'Attention',
    message: 'Need OTPs to confirm loading complete; Generate OTP',
    pickupDate: DateTime.parse('2023-10-10 09:30:00Z'),
  );
}

CommodityTicket commodityTicket4() {
  return CommodityTicket(
    id: '00004',
    ticketNumber: '00004',
    commodityOwnerId: '00004',
    contactPersonId: '00004',
    pickUpAddressId: '00004',
    destinationAddressId: '00004',
    goodMovement: 'Inward',
    commodity: 'Tomatoes',
    quantity: '60 MT',
    status: 'Attention QC Done',
    message: 'Raise any dispute in 2hrs if no dispute press accept',
    pickupDate: DateTime.parse('2023-09-30 14:15:00Z'),
  );
}

CommodityTicket commodityTicket5() {
  return CommodityTicket(
    id: '0005',
    ticketNumber: '00005',
    commodityOwnerId: '00001',
    contactPersonId: '00004',
    pickUpAddressId: '00002',
    destinationAddressId: '00003',
    goodMovement: 'Outward',
    commodity: 'Tomatoes',
    quantity: '60 MT',
    status: 'Stocked',
    message: '',
    pickupDate: DateTime.parse('2023-10-10 09:30:00Z'),
  );
}

CommodityTicket commodityTicket6() {
  return CommodityTicket(
    id: '00006',
    ticketNumber: '00006',
    commodityOwnerId: '00002',
    contactPersonId: '00003',
    pickUpAddressId: '00004',
    destinationAddressId: '00001',
    goodMovement: 'Outward',
    commodity: 'Wheat',
    quantity: '100 MT',
    transportType: 'self',
    status: 'In Progress',
    pickupDate: DateTime.parse('2023-10-03 08:00:00Z'),
  );
}

CommodityTicket commodityTicket7() {
  return CommodityTicket(
    id: '00007',
    ticketNumber: '00007',
    commodityOwnerId: '00004',
    contactPersonId: '00004',
    pickUpAddressId: '00004',
    destinationAddressId: '00004',
    goodMovement: 'Inward',
    commodity: 'Tomatoes',
    quantity: '60 MT',
    status: 'QC Progress',
    pickupDate: DateTime.parse('2023-09-30 14:15:00Z'),
  );
}

CommodityTicket commodityTicket8() {
  return CommodityTicket(
    id: '00008',
    ticketNumber: '00008',
    commodityOwnerId: '00001',
    contactPersonId: '00004',
    pickUpAddressId: '00002',
    destinationAddressId: '00003',
    goodMovement: 'Inward',
    commodity: 'Tomatoes',
    quantity: '60 MT',
    status: 'Stocked',
    message: '',
    pickupDate: DateTime.parse('2023-10-10 09:30:00Z'),
  );
}

CommodityTicket commodityTicket9() {
  return CommodityTicket(
    id: '00009',
    ticketNumber: '00009',
    commodityOwnerId: '00002',
    contactPersonId: '00003',
    pickUpAddressId: '00004',
    destinationAddressId: '00001',
    goodMovement: 'Inward',
    commodity: 'Wheat',
    quantity: '100 MT',
    transportType: 'self',
    status: 'In Progress',
    pickupDate: DateTime.parse('2023-10-03 08:00:00Z'),
  );
}

CommodityTicket commodityTicket10() {
  return CommodityTicket(
    id: '00010',
    ticketNumber: '00010',
    commodityOwnerId: '00003',
    contactPersonId: '00003',
    pickUpAddressId: '00003',
    destinationAddressId: '00003',
    goodMovement: 'Inward',
    commodity: 'Rice',
    quantity: '80 MT',
    status: 'Attention',
    message: 'Need OTPs to confirm loading complete; Generate OTP',
    pickupDate: DateTime.parse('2023-10-10 09:30:00Z'),
  );
}
