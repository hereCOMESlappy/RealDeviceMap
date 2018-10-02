// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Networking/Responses/UseItemPotionResponse.proto
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

struct POGOProtos_Networking_Responses_UseItemPotionResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: POGOProtos_Networking_Responses_UseItemPotionResponse.Result = .unset

  var stamina: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Result: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unset // = 0
    case success // = 1
    case errorNoPokemon // = 2
    case errorCannotUse // = 3
    case errorDeployedToFort // = 4
    case UNRECOGNIZED(Int)

    init() {
      self = .unset
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unset
      case 1: self = .success
      case 2: self = .errorNoPokemon
      case 3: self = .errorCannotUse
      case 4: self = .errorDeployedToFort
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unset: return 0
      case .success: return 1
      case .errorNoPokemon: return 2
      case .errorCannotUse: return 3
      case .errorDeployedToFort: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}
}

#if swift(>=4.2)

extension POGOProtos_Networking_Responses_UseItemPotionResponse.Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Networking_Responses_UseItemPotionResponse.Result] = [
    .unset,
    .success,
    .errorNoPokemon,
    .errorCannotUse,
    .errorDeployedToFort,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Networking.Responses"

extension POGOProtos_Networking_Responses_UseItemPotionResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UseItemPotionResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "result"),
    2: .same(proto: "stamina"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.result)
      case 2: try decoder.decodeSingularInt32Field(value: &self.stamina)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.result != .unset {
      try visitor.visitSingularEnumField(value: self.result, fieldNumber: 1)
    }
    if self.stamina != 0 {
      try visitor.visitSingularInt32Field(value: self.stamina, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Networking_Responses_UseItemPotionResponse, rhs: POGOProtos_Networking_Responses_UseItemPotionResponse) -> Bool {
    if lhs.result != rhs.result {return false}
    if lhs.stamina != rhs.stamina {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension POGOProtos_Networking_Responses_UseItemPotionResponse.Result: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSET"),
    1: .same(proto: "SUCCESS"),
    2: .same(proto: "ERROR_NO_POKEMON"),
    3: .same(proto: "ERROR_CANNOT_USE"),
    4: .same(proto: "ERROR_DEPLOYED_TO_FORT"),
  ]
}
