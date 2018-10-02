// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Inventory/Item/ItemId.proto
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

enum POGOProtos_Inventory_Item_ItemId: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case itemUnknown // = 0
  case itemPokeBall // = 1
  case itemGreatBall // = 2
  case itemUltraBall // = 3
  case itemMasterBall // = 4
  case itemPremierBall // = 5
  case itemPotion // = 101
  case itemSuperPotion // = 102
  case itemHyperPotion // = 103
  case itemMaxPotion // = 104
  case itemRevive // = 201
  case itemMaxRevive // = 202
  case itemLuckyEgg // = 301
  case itemIncenseOrdinary // = 401
  case itemIncenseSpicy // = 402
  case itemIncenseCool // = 403
  case itemIncenseFloral // = 404
  case itemTroyDisk // = 501
  case itemXAttack // = 602
  case itemXDefense // = 603
  case itemXMiracle // = 604
  case itemRazzBerry // = 701
  case itemBlukBerry // = 702
  case itemNanabBerry // = 703
  case itemWeparBerry // = 704
  case itemPinapBerry // = 705
  case itemGoldenRazzBerry // = 706
  case itemGoldenNanabBerry // = 707
  case itemGoldenPinapBerry // = 708
  case itemSpecialCamera // = 801
  case itemIncubatorBasicUnlimited // = 901
  case itemIncubatorBasic // = 902
  case itemIncubatorSuper // = 903
  case itemPokemonStorageUpgrade // = 1001
  case itemItemStorageUpgrade // = 1002
  case itemSunStone // = 1101
  case itemKingsRock // = 1102
  case itemMetalCoat // = 1103
  case itemDragonScale // = 1104
  case itemUpGrade // = 1105
  case itemMoveRerollFastAttack // = 1201
  case itemMoveRerollSpecialAttack // = 1202
  case itemRareCandy // = 1301
  case itemFreeRaidTicket // = 1401
  case itemPaidRaidTicket // = 1402
  case itemLegendaryRaidTicket // = 1403
  case itemStarPiece // = 1404
  case itemFriendGiftBox // = 1405
  case UNRECOGNIZED(Int)

  init() {
    self = .itemUnknown
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .itemUnknown
    case 1: self = .itemPokeBall
    case 2: self = .itemGreatBall
    case 3: self = .itemUltraBall
    case 4: self = .itemMasterBall
    case 5: self = .itemPremierBall
    case 101: self = .itemPotion
    case 102: self = .itemSuperPotion
    case 103: self = .itemHyperPotion
    case 104: self = .itemMaxPotion
    case 201: self = .itemRevive
    case 202: self = .itemMaxRevive
    case 301: self = .itemLuckyEgg
    case 401: self = .itemIncenseOrdinary
    case 402: self = .itemIncenseSpicy
    case 403: self = .itemIncenseCool
    case 404: self = .itemIncenseFloral
    case 501: self = .itemTroyDisk
    case 602: self = .itemXAttack
    case 603: self = .itemXDefense
    case 604: self = .itemXMiracle
    case 701: self = .itemRazzBerry
    case 702: self = .itemBlukBerry
    case 703: self = .itemNanabBerry
    case 704: self = .itemWeparBerry
    case 705: self = .itemPinapBerry
    case 706: self = .itemGoldenRazzBerry
    case 707: self = .itemGoldenNanabBerry
    case 708: self = .itemGoldenPinapBerry
    case 801: self = .itemSpecialCamera
    case 901: self = .itemIncubatorBasicUnlimited
    case 902: self = .itemIncubatorBasic
    case 903: self = .itemIncubatorSuper
    case 1001: self = .itemPokemonStorageUpgrade
    case 1002: self = .itemItemStorageUpgrade
    case 1101: self = .itemSunStone
    case 1102: self = .itemKingsRock
    case 1103: self = .itemMetalCoat
    case 1104: self = .itemDragonScale
    case 1105: self = .itemUpGrade
    case 1201: self = .itemMoveRerollFastAttack
    case 1202: self = .itemMoveRerollSpecialAttack
    case 1301: self = .itemRareCandy
    case 1401: self = .itemFreeRaidTicket
    case 1402: self = .itemPaidRaidTicket
    case 1403: self = .itemLegendaryRaidTicket
    case 1404: self = .itemStarPiece
    case 1405: self = .itemFriendGiftBox
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .itemUnknown: return 0
    case .itemPokeBall: return 1
    case .itemGreatBall: return 2
    case .itemUltraBall: return 3
    case .itemMasterBall: return 4
    case .itemPremierBall: return 5
    case .itemPotion: return 101
    case .itemSuperPotion: return 102
    case .itemHyperPotion: return 103
    case .itemMaxPotion: return 104
    case .itemRevive: return 201
    case .itemMaxRevive: return 202
    case .itemLuckyEgg: return 301
    case .itemIncenseOrdinary: return 401
    case .itemIncenseSpicy: return 402
    case .itemIncenseCool: return 403
    case .itemIncenseFloral: return 404
    case .itemTroyDisk: return 501
    case .itemXAttack: return 602
    case .itemXDefense: return 603
    case .itemXMiracle: return 604
    case .itemRazzBerry: return 701
    case .itemBlukBerry: return 702
    case .itemNanabBerry: return 703
    case .itemWeparBerry: return 704
    case .itemPinapBerry: return 705
    case .itemGoldenRazzBerry: return 706
    case .itemGoldenNanabBerry: return 707
    case .itemGoldenPinapBerry: return 708
    case .itemSpecialCamera: return 801
    case .itemIncubatorBasicUnlimited: return 901
    case .itemIncubatorBasic: return 902
    case .itemIncubatorSuper: return 903
    case .itemPokemonStorageUpgrade: return 1001
    case .itemItemStorageUpgrade: return 1002
    case .itemSunStone: return 1101
    case .itemKingsRock: return 1102
    case .itemMetalCoat: return 1103
    case .itemDragonScale: return 1104
    case .itemUpGrade: return 1105
    case .itemMoveRerollFastAttack: return 1201
    case .itemMoveRerollSpecialAttack: return 1202
    case .itemRareCandy: return 1301
    case .itemFreeRaidTicket: return 1401
    case .itemPaidRaidTicket: return 1402
    case .itemLegendaryRaidTicket: return 1403
    case .itemStarPiece: return 1404
    case .itemFriendGiftBox: return 1405
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension POGOProtos_Inventory_Item_ItemId: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Inventory_Item_ItemId] = [
    .itemUnknown,
    .itemPokeBall,
    .itemGreatBall,
    .itemUltraBall,
    .itemMasterBall,
    .itemPremierBall,
    .itemPotion,
    .itemSuperPotion,
    .itemHyperPotion,
    .itemMaxPotion,
    .itemRevive,
    .itemMaxRevive,
    .itemLuckyEgg,
    .itemIncenseOrdinary,
    .itemIncenseSpicy,
    .itemIncenseCool,
    .itemIncenseFloral,
    .itemTroyDisk,
    .itemXAttack,
    .itemXDefense,
    .itemXMiracle,
    .itemRazzBerry,
    .itemBlukBerry,
    .itemNanabBerry,
    .itemWeparBerry,
    .itemPinapBerry,
    .itemGoldenRazzBerry,
    .itemGoldenNanabBerry,
    .itemGoldenPinapBerry,
    .itemSpecialCamera,
    .itemIncubatorBasicUnlimited,
    .itemIncubatorBasic,
    .itemIncubatorSuper,
    .itemPokemonStorageUpgrade,
    .itemItemStorageUpgrade,
    .itemSunStone,
    .itemKingsRock,
    .itemMetalCoat,
    .itemDragonScale,
    .itemUpGrade,
    .itemMoveRerollFastAttack,
    .itemMoveRerollSpecialAttack,
    .itemRareCandy,
    .itemFreeRaidTicket,
    .itemPaidRaidTicket,
    .itemLegendaryRaidTicket,
    .itemStarPiece,
    .itemFriendGiftBox,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension POGOProtos_Inventory_Item_ItemId: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ITEM_UNKNOWN"),
    1: .same(proto: "ITEM_POKE_BALL"),
    2: .same(proto: "ITEM_GREAT_BALL"),
    3: .same(proto: "ITEM_ULTRA_BALL"),
    4: .same(proto: "ITEM_MASTER_BALL"),
    5: .same(proto: "ITEM_PREMIER_BALL"),
    101: .same(proto: "ITEM_POTION"),
    102: .same(proto: "ITEM_SUPER_POTION"),
    103: .same(proto: "ITEM_HYPER_POTION"),
    104: .same(proto: "ITEM_MAX_POTION"),
    201: .same(proto: "ITEM_REVIVE"),
    202: .same(proto: "ITEM_MAX_REVIVE"),
    301: .same(proto: "ITEM_LUCKY_EGG"),
    401: .same(proto: "ITEM_INCENSE_ORDINARY"),
    402: .same(proto: "ITEM_INCENSE_SPICY"),
    403: .same(proto: "ITEM_INCENSE_COOL"),
    404: .same(proto: "ITEM_INCENSE_FLORAL"),
    501: .same(proto: "ITEM_TROY_DISK"),
    602: .same(proto: "ITEM_X_ATTACK"),
    603: .same(proto: "ITEM_X_DEFENSE"),
    604: .same(proto: "ITEM_X_MIRACLE"),
    701: .same(proto: "ITEM_RAZZ_BERRY"),
    702: .same(proto: "ITEM_BLUK_BERRY"),
    703: .same(proto: "ITEM_NANAB_BERRY"),
    704: .same(proto: "ITEM_WEPAR_BERRY"),
    705: .same(proto: "ITEM_PINAP_BERRY"),
    706: .same(proto: "ITEM_GOLDEN_RAZZ_BERRY"),
    707: .same(proto: "ITEM_GOLDEN_NANAB_BERRY"),
    708: .same(proto: "ITEM_GOLDEN_PINAP_BERRY"),
    801: .same(proto: "ITEM_SPECIAL_CAMERA"),
    901: .same(proto: "ITEM_INCUBATOR_BASIC_UNLIMITED"),
    902: .same(proto: "ITEM_INCUBATOR_BASIC"),
    903: .same(proto: "ITEM_INCUBATOR_SUPER"),
    1001: .same(proto: "ITEM_POKEMON_STORAGE_UPGRADE"),
    1002: .same(proto: "ITEM_ITEM_STORAGE_UPGRADE"),
    1101: .same(proto: "ITEM_SUN_STONE"),
    1102: .same(proto: "ITEM_KINGS_ROCK"),
    1103: .same(proto: "ITEM_METAL_COAT"),
    1104: .same(proto: "ITEM_DRAGON_SCALE"),
    1105: .same(proto: "ITEM_UP_GRADE"),
    1201: .same(proto: "ITEM_MOVE_REROLL_FAST_ATTACK"),
    1202: .same(proto: "ITEM_MOVE_REROLL_SPECIAL_ATTACK"),
    1301: .same(proto: "ITEM_RARE_CANDY"),
    1401: .same(proto: "ITEM_FREE_RAID_TICKET"),
    1402: .same(proto: "ITEM_PAID_RAID_TICKET"),
    1403: .same(proto: "ITEM_LEGENDARY_RAID_TICKET"),
    1404: .same(proto: "ITEM_STAR_PIECE"),
    1405: .same(proto: "ITEM_FRIEND_GIFT_BOX"),
  ]
}
