// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Networking/Responses/AddFortModifierResponse.proto
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

struct POGOProtos_Networking_Responses_AddFortModifierResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var result: POGOProtos_Networking_Responses_AddFortModifierResponse.Result {
    get {return _storage._result}
    set {_uniqueStorage()._result = newValue}
  }

  var fortDetails: POGOProtos_Networking_Responses_FortDetailsResponse {
    get {return _storage._fortDetails ?? POGOProtos_Networking_Responses_FortDetailsResponse()}
    set {_uniqueStorage()._fortDetails = newValue}
  }
  /// Returns true if `fortDetails` has been explicitly set.
  var hasFortDetails: Bool {return _storage._fortDetails != nil}
  /// Clears the value of `fortDetails`. Subsequent reads from it will return its default value.
  mutating func clearFortDetails() {_uniqueStorage()._fortDetails = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Result: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case noResultSet // = 0
    case success // = 1
    case fortAlreadyHasModifier // = 2
    case tooFarAway // = 3
    case noItemInInventory // = 4
    case poiInaccessible // = 5
    case UNRECOGNIZED(Int)

    init() {
      self = .noResultSet
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .noResultSet
      case 1: self = .success
      case 2: self = .fortAlreadyHasModifier
      case 3: self = .tooFarAway
      case 4: self = .noItemInInventory
      case 5: self = .poiInaccessible
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .noResultSet: return 0
      case .success: return 1
      case .fortAlreadyHasModifier: return 2
      case .tooFarAway: return 3
      case .noItemInInventory: return 4
      case .poiInaccessible: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension POGOProtos_Networking_Responses_AddFortModifierResponse.Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Networking_Responses_AddFortModifierResponse.Result] = [
    .noResultSet,
    .success,
    .fortAlreadyHasModifier,
    .tooFarAway,
    .noItemInInventory,
    .poiInaccessible,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Networking.Responses"

extension POGOProtos_Networking_Responses_AddFortModifierResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AddFortModifierResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "result"),
    2: .standard(proto: "fort_details"),
  ]

  fileprivate class _StorageClass {
    var _result: POGOProtos_Networking_Responses_AddFortModifierResponse.Result = .noResultSet
    var _fortDetails: POGOProtos_Networking_Responses_FortDetailsResponse? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _result = source._result
      _fortDetails = source._fortDetails
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularEnumField(value: &_storage._result)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._fortDetails)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._result != .noResultSet {
        try visitor.visitSingularEnumField(value: _storage._result, fieldNumber: 1)
      }
      if let v = _storage._fortDetails {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Networking_Responses_AddFortModifierResponse, rhs: POGOProtos_Networking_Responses_AddFortModifierResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._result != rhs_storage._result {return false}
        if _storage._fortDetails != rhs_storage._fortDetails {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension POGOProtos_Networking_Responses_AddFortModifierResponse.Result: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NO_RESULT_SET"),
    1: .same(proto: "SUCCESS"),
    2: .same(proto: "FORT_ALREADY_HAS_MODIFIER"),
    3: .same(proto: "TOO_FAR_AWAY"),
    4: .same(proto: "NO_ITEM_IN_INVENTORY"),
    5: .same(proto: "POI_INACCESSIBLE"),
  ]
}
