// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Data/Gym/GymBattle.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct POGOProtos_Data_Gym_GymBattle {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var battleID: String = String()

  var completedMs: Int64 = 0

  var incrementedGymBattleFriends: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Data.Gym"

extension POGOProtos_Data_Gym_GymBattle: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GymBattle"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "battle_id"),
    2: .standard(proto: "completed_ms"),
    3: .standard(proto: "incremented_gym_battle_friends"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.battleID)
      case 2: try decoder.decodeSingularInt64Field(value: &self.completedMs)
      case 3: try decoder.decodeSingularBoolField(value: &self.incrementedGymBattleFriends)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.battleID.isEmpty {
      try visitor.visitSingularStringField(value: self.battleID, fieldNumber: 1)
    }
    if self.completedMs != 0 {
      try visitor.visitSingularInt64Field(value: self.completedMs, fieldNumber: 2)
    }
    if self.incrementedGymBattleFriends != false {
      try visitor.visitSingularBoolField(value: self.incrementedGymBattleFriends, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Data_Gym_GymBattle, rhs: POGOProtos_Data_Gym_GymBattle) -> Bool {
    if lhs.battleID != rhs.battleID {return false}
    if lhs.completedMs != rhs.completedMs {return false}
    if lhs.incrementedGymBattleFriends != rhs.incrementedGymBattleFriends {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
