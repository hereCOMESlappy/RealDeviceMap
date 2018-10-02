// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Settings/Master/BadgeSettings.proto
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

struct POGOProtos_Settings_Master_BadgeSettings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var badgeType: POGOProtos_Enums_BadgeType {
    get {return _storage._badgeType}
    set {_uniqueStorage()._badgeType = newValue}
  }

  var badgeRank: Int32 {
    get {return _storage._badgeRank}
    set {_uniqueStorage()._badgeRank = newValue}
  }

  var targets: [Int32] {
    get {return _storage._targets}
    set {_uniqueStorage()._targets = newValue}
  }

  var captureReward: [POGOProtos_Data_Badge_BadgeCaptureReward] {
    get {return _storage._captureReward}
    set {_uniqueStorage()._captureReward = newValue}
  }

  var eventBadge: Bool {
    get {return _storage._eventBadge}
    set {_uniqueStorage()._eventBadge = newValue}
  }

  var eventBadgeSettings: POGOProtos_Settings_Master_EventBadgeSettings {
    get {return _storage._eventBadgeSettings ?? POGOProtos_Settings_Master_EventBadgeSettings()}
    set {_uniqueStorage()._eventBadgeSettings = newValue}
  }
  /// Returns true if `eventBadgeSettings` has been explicitly set.
  var hasEventBadgeSettings: Bool {return _storage._eventBadgeSettings != nil}
  /// Clears the value of `eventBadgeSettings`. Subsequent reads from it will return its default value.
  mutating func clearEventBadgeSettings() {_uniqueStorage()._eventBadgeSettings = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Settings.Master"

extension POGOProtos_Settings_Master_BadgeSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".BadgeSettings"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "badge_type"),
    2: .standard(proto: "badge_rank"),
    3: .same(proto: "targets"),
    4: .standard(proto: "capture_reward"),
    5: .standard(proto: "event_badge"),
    6: .standard(proto: "event_badge_settings"),
  ]

  fileprivate class _StorageClass {
    var _badgeType: POGOProtos_Enums_BadgeType = .badgeUnset
    var _badgeRank: Int32 = 0
    var _targets: [Int32] = []
    var _captureReward: [POGOProtos_Data_Badge_BadgeCaptureReward] = []
    var _eventBadge: Bool = false
    var _eventBadgeSettings: POGOProtos_Settings_Master_EventBadgeSettings? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _badgeType = source._badgeType
      _badgeRank = source._badgeRank
      _targets = source._targets
      _captureReward = source._captureReward
      _eventBadge = source._eventBadge
      _eventBadgeSettings = source._eventBadgeSettings
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._badgeType)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._badgeRank)
        case 3: try decoder.decodeRepeatedInt32Field(value: &_storage._targets)
        case 4: try decoder.decodeRepeatedMessageField(value: &_storage._captureReward)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._eventBadge)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._eventBadgeSettings)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._badgeType != .badgeUnset {
        try visitor.visitSingularEnumField(value: _storage._badgeType, fieldNumber: 1)
      }
      if _storage._badgeRank != 0 {
        try visitor.visitSingularInt32Field(value: _storage._badgeRank, fieldNumber: 2)
      }
      if !_storage._targets.isEmpty {
        try visitor.visitPackedInt32Field(value: _storage._targets, fieldNumber: 3)
      }
      if !_storage._captureReward.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._captureReward, fieldNumber: 4)
      }
      if _storage._eventBadge != false {
        try visitor.visitSingularBoolField(value: _storage._eventBadge, fieldNumber: 5)
      }
      if let v = _storage._eventBadgeSettings {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Settings_Master_BadgeSettings, rhs: POGOProtos_Settings_Master_BadgeSettings) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._badgeType != rhs_storage._badgeType {return false}
        if _storage._badgeRank != rhs_storage._badgeRank {return false}
        if _storage._targets != rhs_storage._targets {return false}
        if _storage._captureReward != rhs_storage._captureReward {return false}
        if _storage._eventBadge != rhs_storage._eventBadge {return false}
        if _storage._eventBadgeSettings != rhs_storage._eventBadgeSettings {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
