import 'package:flutter/material.dart';

enum Sizes { extraSmall, small, medium, large, extraLarge }

enum Calendar { day, week, month, year }

enum CommodityTicketStatus {
  notStarted,
  inProgress,
  needsAttention,
  qcComplete,
  halted,
  completed,
  inward,
  outward,
}

extension CommodityTicketStatusColor on CommodityTicketStatus {
  Color get color {
    switch (this) {
      case CommodityTicketStatus.notStarted:
        return Color.fromARGB(255, 196, 196, 196);
      case CommodityTicketStatus.inProgress:
        return const Color(0xFFFFC268);
      case CommodityTicketStatus.needsAttention:
        return Color.fromARGB(255, 246, 104, 104);
      case CommodityTicketStatus.needsAttention:
        return const Color(0xFF787878);
      case CommodityTicketStatus.qcComplete:
        return Color.fromARGB(255, 246, 117, 243);
      case CommodityTicketStatus.completed:
        return Color.fromARGB(255, 85, 226, 134);
      case CommodityTicketStatus.inward:
        return const Color(0xFF7CBAE7);
      case CommodityTicketStatus.outward:
        return Color.fromARGB(255, 221, 175, 235);
      default:
        throw Exception('Unknown CommodityTicketStatus value: $this');
    }
  }
}
