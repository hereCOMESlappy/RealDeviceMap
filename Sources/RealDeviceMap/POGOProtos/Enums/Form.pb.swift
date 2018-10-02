// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Enums/Form.proto
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

enum POGOProtos_Enums_Form: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case unset // = 0
  case unownA // = 1
  case unownB // = 2
  case unownC // = 3
  case unownD // = 4
  case unownE // = 5
  case unownF // = 6
  case unownG // = 7
  case unownH // = 8
  case unownI // = 9
  case unownJ // = 10
  case unownK // = 11
  case unownL // = 12
  case unownM // = 13
  case unownN // = 14
  case unownO // = 15
  case unownP // = 16
  case unownQ // = 17
  case unownR // = 18
  case unownS // = 19
  case unownT // = 20
  case unownU // = 21
  case unownV // = 22
  case unownW // = 23
  case unownX // = 24
  case unownY // = 25
  case unownZ // = 26
  case unownExclamationPoint // = 27
  case unownQuestionMark // = 28
  case castformNormal // = 29
  case castformSunny // = 30
  case castformRainy // = 31
  case castformSnowy // = 32
  case deoxysNormal // = 33
  case deoxysAttack // = 34
  case deoxysDefense // = 35
  case deoxysSpeed // = 36
  case spinda00 // = 37
  case spinda01 // = 38
  case spinda02 // = 39
  case spinda03 // = 40
  case spinda04 // = 41
  case spinda05 // = 42
  case spinda06 // = 43
  case spinda07 // = 44
  case rattataNormal // = 45
  case rattataAlola // = 46
  case raticateNormal // = 47
  case raticateAlola // = 48
  case raichuNormal // = 49
  case raichuAlola // = 50
  case sandshrewNormal // = 51
  case sandshrewAlola // = 52
  case sandslashNormal // = 53
  case sandslashAlola // = 54
  case vulpixNormal // = 55
  case vulpixAlola // = 56
  case ninetalesNormal // = 57
  case ninetalesAlola // = 58
  case diglettNormal // = 59
  case diglettAlola // = 60
  case dugtrioNormal // = 61
  case dugtrioAlola // = 62
  case meowthNormal // = 63
  case meowthAlola // = 64
  case persianNormal // = 65
  case persianAlola // = 66
  case geodudeNormal // = 67
  case geodudeAlola // = 68
  case gravelerNormal // = 69
  case gravelerAlola // = 70
  case golemNormal // = 71
  case golemAlola // = 72
  case grimerNormal // = 73
  case grimerAlola // = 74
  case mukNormal // = 75
  case mukAlola // = 76
  case exeggutorNormal // = 77
  case exeggutorAlola // = 78
  case marowakNormal // = 79
  case marowakAlola // = 80
  case UNRECOGNIZED(Int)

  init() {
    self = .unset
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unset
    case 1: self = .unownA
    case 2: self = .unownB
    case 3: self = .unownC
    case 4: self = .unownD
    case 5: self = .unownE
    case 6: self = .unownF
    case 7: self = .unownG
    case 8: self = .unownH
    case 9: self = .unownI
    case 10: self = .unownJ
    case 11: self = .unownK
    case 12: self = .unownL
    case 13: self = .unownM
    case 14: self = .unownN
    case 15: self = .unownO
    case 16: self = .unownP
    case 17: self = .unownQ
    case 18: self = .unownR
    case 19: self = .unownS
    case 20: self = .unownT
    case 21: self = .unownU
    case 22: self = .unownV
    case 23: self = .unownW
    case 24: self = .unownX
    case 25: self = .unownY
    case 26: self = .unownZ
    case 27: self = .unownExclamationPoint
    case 28: self = .unownQuestionMark
    case 29: self = .castformNormal
    case 30: self = .castformSunny
    case 31: self = .castformRainy
    case 32: self = .castformSnowy
    case 33: self = .deoxysNormal
    case 34: self = .deoxysAttack
    case 35: self = .deoxysDefense
    case 36: self = .deoxysSpeed
    case 37: self = .spinda00
    case 38: self = .spinda01
    case 39: self = .spinda02
    case 40: self = .spinda03
    case 41: self = .spinda04
    case 42: self = .spinda05
    case 43: self = .spinda06
    case 44: self = .spinda07
    case 45: self = .rattataNormal
    case 46: self = .rattataAlola
    case 47: self = .raticateNormal
    case 48: self = .raticateAlola
    case 49: self = .raichuNormal
    case 50: self = .raichuAlola
    case 51: self = .sandshrewNormal
    case 52: self = .sandshrewAlola
    case 53: self = .sandslashNormal
    case 54: self = .sandslashAlola
    case 55: self = .vulpixNormal
    case 56: self = .vulpixAlola
    case 57: self = .ninetalesNormal
    case 58: self = .ninetalesAlola
    case 59: self = .diglettNormal
    case 60: self = .diglettAlola
    case 61: self = .dugtrioNormal
    case 62: self = .dugtrioAlola
    case 63: self = .meowthNormal
    case 64: self = .meowthAlola
    case 65: self = .persianNormal
    case 66: self = .persianAlola
    case 67: self = .geodudeNormal
    case 68: self = .geodudeAlola
    case 69: self = .gravelerNormal
    case 70: self = .gravelerAlola
    case 71: self = .golemNormal
    case 72: self = .golemAlola
    case 73: self = .grimerNormal
    case 74: self = .grimerAlola
    case 75: self = .mukNormal
    case 76: self = .mukAlola
    case 77: self = .exeggutorNormal
    case 78: self = .exeggutorAlola
    case 79: self = .marowakNormal
    case 80: self = .marowakAlola
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .unset: return 0
    case .unownA: return 1
    case .unownB: return 2
    case .unownC: return 3
    case .unownD: return 4
    case .unownE: return 5
    case .unownF: return 6
    case .unownG: return 7
    case .unownH: return 8
    case .unownI: return 9
    case .unownJ: return 10
    case .unownK: return 11
    case .unownL: return 12
    case .unownM: return 13
    case .unownN: return 14
    case .unownO: return 15
    case .unownP: return 16
    case .unownQ: return 17
    case .unownR: return 18
    case .unownS: return 19
    case .unownT: return 20
    case .unownU: return 21
    case .unownV: return 22
    case .unownW: return 23
    case .unownX: return 24
    case .unownY: return 25
    case .unownZ: return 26
    case .unownExclamationPoint: return 27
    case .unownQuestionMark: return 28
    case .castformNormal: return 29
    case .castformSunny: return 30
    case .castformRainy: return 31
    case .castformSnowy: return 32
    case .deoxysNormal: return 33
    case .deoxysAttack: return 34
    case .deoxysDefense: return 35
    case .deoxysSpeed: return 36
    case .spinda00: return 37
    case .spinda01: return 38
    case .spinda02: return 39
    case .spinda03: return 40
    case .spinda04: return 41
    case .spinda05: return 42
    case .spinda06: return 43
    case .spinda07: return 44
    case .rattataNormal: return 45
    case .rattataAlola: return 46
    case .raticateNormal: return 47
    case .raticateAlola: return 48
    case .raichuNormal: return 49
    case .raichuAlola: return 50
    case .sandshrewNormal: return 51
    case .sandshrewAlola: return 52
    case .sandslashNormal: return 53
    case .sandslashAlola: return 54
    case .vulpixNormal: return 55
    case .vulpixAlola: return 56
    case .ninetalesNormal: return 57
    case .ninetalesAlola: return 58
    case .diglettNormal: return 59
    case .diglettAlola: return 60
    case .dugtrioNormal: return 61
    case .dugtrioAlola: return 62
    case .meowthNormal: return 63
    case .meowthAlola: return 64
    case .persianNormal: return 65
    case .persianAlola: return 66
    case .geodudeNormal: return 67
    case .geodudeAlola: return 68
    case .gravelerNormal: return 69
    case .gravelerAlola: return 70
    case .golemNormal: return 71
    case .golemAlola: return 72
    case .grimerNormal: return 73
    case .grimerAlola: return 74
    case .mukNormal: return 75
    case .mukAlola: return 76
    case .exeggutorNormal: return 77
    case .exeggutorAlola: return 78
    case .marowakNormal: return 79
    case .marowakAlola: return 80
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension POGOProtos_Enums_Form: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Enums_Form] = [
    .unset,
    .unownA,
    .unownB,
    .unownC,
    .unownD,
    .unownE,
    .unownF,
    .unownG,
    .unownH,
    .unownI,
    .unownJ,
    .unownK,
    .unownL,
    .unownM,
    .unownN,
    .unownO,
    .unownP,
    .unownQ,
    .unownR,
    .unownS,
    .unownT,
    .unownU,
    .unownV,
    .unownW,
    .unownX,
    .unownY,
    .unownZ,
    .unownExclamationPoint,
    .unownQuestionMark,
    .castformNormal,
    .castformSunny,
    .castformRainy,
    .castformSnowy,
    .deoxysNormal,
    .deoxysAttack,
    .deoxysDefense,
    .deoxysSpeed,
    .spinda00,
    .spinda01,
    .spinda02,
    .spinda03,
    .spinda04,
    .spinda05,
    .spinda06,
    .spinda07,
    .rattataNormal,
    .rattataAlola,
    .raticateNormal,
    .raticateAlola,
    .raichuNormal,
    .raichuAlola,
    .sandshrewNormal,
    .sandshrewAlola,
    .sandslashNormal,
    .sandslashAlola,
    .vulpixNormal,
    .vulpixAlola,
    .ninetalesNormal,
    .ninetalesAlola,
    .diglettNormal,
    .diglettAlola,
    .dugtrioNormal,
    .dugtrioAlola,
    .meowthNormal,
    .meowthAlola,
    .persianNormal,
    .persianAlola,
    .geodudeNormal,
    .geodudeAlola,
    .gravelerNormal,
    .gravelerAlola,
    .golemNormal,
    .golemAlola,
    .grimerNormal,
    .grimerAlola,
    .mukNormal,
    .mukAlola,
    .exeggutorNormal,
    .exeggutorAlola,
    .marowakNormal,
    .marowakAlola,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension POGOProtos_Enums_Form: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FORM_UNSET"),
    1: .same(proto: "UNOWN_A"),
    2: .same(proto: "UNOWN_B"),
    3: .same(proto: "UNOWN_C"),
    4: .same(proto: "UNOWN_D"),
    5: .same(proto: "UNOWN_E"),
    6: .same(proto: "UNOWN_F"),
    7: .same(proto: "UNOWN_G"),
    8: .same(proto: "UNOWN_H"),
    9: .same(proto: "UNOWN_I"),
    10: .same(proto: "UNOWN_J"),
    11: .same(proto: "UNOWN_K"),
    12: .same(proto: "UNOWN_L"),
    13: .same(proto: "UNOWN_M"),
    14: .same(proto: "UNOWN_N"),
    15: .same(proto: "UNOWN_O"),
    16: .same(proto: "UNOWN_P"),
    17: .same(proto: "UNOWN_Q"),
    18: .same(proto: "UNOWN_R"),
    19: .same(proto: "UNOWN_S"),
    20: .same(proto: "UNOWN_T"),
    21: .same(proto: "UNOWN_U"),
    22: .same(proto: "UNOWN_V"),
    23: .same(proto: "UNOWN_W"),
    24: .same(proto: "UNOWN_X"),
    25: .same(proto: "UNOWN_Y"),
    26: .same(proto: "UNOWN_Z"),
    27: .same(proto: "UNOWN_EXCLAMATION_POINT"),
    28: .same(proto: "UNOWN_QUESTION_MARK"),
    29: .same(proto: "CASTFORM_NORMAL"),
    30: .same(proto: "CASTFORM_SUNNY"),
    31: .same(proto: "CASTFORM_RAINY"),
    32: .same(proto: "CASTFORM_SNOWY"),
    33: .same(proto: "DEOXYS_NORMAL"),
    34: .same(proto: "DEOXYS_ATTACK"),
    35: .same(proto: "DEOXYS_DEFENSE"),
    36: .same(proto: "DEOXYS_SPEED"),
    37: .same(proto: "SPINDA_00"),
    38: .same(proto: "SPINDA_01"),
    39: .same(proto: "SPINDA_02"),
    40: .same(proto: "SPINDA_03"),
    41: .same(proto: "SPINDA_04"),
    42: .same(proto: "SPINDA_05"),
    43: .same(proto: "SPINDA_06"),
    44: .same(proto: "SPINDA_07"),
    45: .same(proto: "RATTATA_NORMAL"),
    46: .same(proto: "RATTATA_ALOLA"),
    47: .same(proto: "RATICATE_NORMAL"),
    48: .same(proto: "RATICATE_ALOLA"),
    49: .same(proto: "RAICHU_NORMAL"),
    50: .same(proto: "RAICHU_ALOLA"),
    51: .same(proto: "SANDSHREW_NORMAL"),
    52: .same(proto: "SANDSHREW_ALOLA"),
    53: .same(proto: "SANDSLASH_NORMAL"),
    54: .same(proto: "SANDSLASH_ALOLA"),
    55: .same(proto: "VULPIX_NORMAL"),
    56: .same(proto: "VULPIX_ALOLA"),
    57: .same(proto: "NINETALES_NORMAL"),
    58: .same(proto: "NINETALES_ALOLA"),
    59: .same(proto: "DIGLETT_NORMAL"),
    60: .same(proto: "DIGLETT_ALOLA"),
    61: .same(proto: "DUGTRIO_NORMAL"),
    62: .same(proto: "DUGTRIO_ALOLA"),
    63: .same(proto: "MEOWTH_NORMAL"),
    64: .same(proto: "MEOWTH_ALOLA"),
    65: .same(proto: "PERSIAN_NORMAL"),
    66: .same(proto: "PERSIAN_ALOLA"),
    67: .same(proto: "GEODUDE_NORMAL"),
    68: .same(proto: "GEODUDE_ALOLA"),
    69: .same(proto: "GRAVELER_NORMAL"),
    70: .same(proto: "GRAVELER_ALOLA"),
    71: .same(proto: "GOLEM_NORMAL"),
    72: .same(proto: "GOLEM_ALOLA"),
    73: .same(proto: "GRIMER_NORMAL"),
    74: .same(proto: "GRIMER_ALOLA"),
    75: .same(proto: "MUK_NORMAL"),
    76: .same(proto: "MUK_ALOLA"),
    77: .same(proto: "EXEGGUTOR_NORMAL"),
    78: .same(proto: "EXEGGUTOR_ALOLA"),
    79: .same(proto: "MAROWAK_NORMAL"),
    80: .same(proto: "MAROWAK_ALOLA"),
  ]
}
