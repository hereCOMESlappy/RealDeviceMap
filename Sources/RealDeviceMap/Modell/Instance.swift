//
//  Instance.swift
//  RealDeviceMap
//
//  Created by Florian Kostenzer on 29.09.18.
//

import Foundation
import PerfectLib
import PerfectMySQL

class Instance: Hashable {
    
    public var hashValue: Int {
        return name.hashValue
    }
    
    enum InstanceType: String {
        case circlePokemon = "circle_pokemon"
        case circleRaid = "circle_raid"
        case circleSmartRaid = "circle_smart_raid"
        case autoQuest = "auto_quest"
        case pokemonIV = "pokemon_iv"
        
        static func fromString(_ s: String) -> InstanceType? {
            if s.lowercased() == "circle_pokemon" || s.lowercased() == "circlepokemon" {
                return .circlePokemon
            } else if s.lowercased() == "circle_raid" || s.lowercased() == "circleraid" {
                return .circleRaid
            } else if s.lowercased() == "circle_smart_raid" || s.lowercased() == "circlesmartraid" {
                return .circleSmartRaid
            } else if s.lowercased() == "auto_quest" || s.lowercased() == "autoquest" {
                return .autoQuest
            } else if s.lowercased() == "pokemon_iv" || s.lowercased() == "pokemoniv" {
                return .pokemonIV
            } else {
                return nil
            }
        }
    }
    
    var name: String
    var type: InstanceType
    var data: [String: Any]
    var count: Int64

    init(name: String, type: InstanceType, data: [String: Any], count: Int64) {
        self.name = name
        self.type = type
        self.data = data
        self.count = count
    }
    
    public func create(mysql: MySQL?=nil) throws {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[INSTANCE] Failed to connect to database.")
            throw DBController.DBError()
        }

        let mysqlStmt = MySQLStmt(mysql)
        let sql = """
            INSERT INTO instance (name, type, data)
            VALUES (?, ?, ?)
        """
        
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(name)
        mysqlStmt.bindParam(type.rawValue)
        mysqlStmt.bindParam(try! data.jsonEncodedString())
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[INSTANCE] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
    }
    
    public static func delete(mysql: MySQL?=nil, name: String) throws {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[INSTANCE] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let mysqlStmt = MySQLStmt(mysql)
        let sql = """
            DELETE FROM instance
            WHERE name = ?
        """
        
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(name)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[INSTANCE] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
    }
    
    public func update(mysql: MySQL?=nil, oldName: String) throws {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[INSTANCE] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let mysqlStmt = MySQLStmt(mysql)
        let sql = """
            UPDATE instance
            SET data = ?, name = ?, type = ?
            WHERE name = ?
        """
        
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(try! data.jsonEncodedString())
        mysqlStmt.bindParam(name)
        mysqlStmt.bindParam(type.rawValue)
        mysqlStmt.bindParam(oldName)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[INSTANCE] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
    }
    
    public static func getAll(mysql: MySQL?=nil) throws -> [Instance] {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[INSTANCE] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let sql = """
            SELECT name, type, data, count
            FROM instance AS inst
            LEFT JOIN (
              SELECT COUNT(instance_name) AS count, instance_name
              FROM device
              GROUP BY instance_name
            ) devices ON (inst.name = devices.instance_name)
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[INSTANCE] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        
        var instances = [Instance]()
        while let result = results.next() {
            let name = result[0] as! String
            let type = InstanceType.fromString(result[1] as! String)!
            let data = (try! (result[2] as! String).jsonDecode() as? [String: Any]) ?? [String: Any]()
            let count = result[3] as! Int64? ?? 0
            instances.append(Instance(name: name, type: type, data: data, count: count))
        }
        return instances
        
    }
    
    public static func getByName(mysql: MySQL?=nil, name: String) throws -> Instance? {
        
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[INSTANCE] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        let sql = """
            SELECT type, data
            FROM instance
            WHERE name = ?
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        mysqlStmt.bindParam(name)
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[INSTANCE] Failed to execute query. (\(mysqlStmt.errorMessage())")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        if results.numRows == 0 {
            return nil
        }
        
        let result = results.next()!
            let type = InstanceType.fromString(result[0] as! String)!
            let data = (try! (result[1] as! String).jsonDecode() as? [String: Any]) ?? [String: Any]()
        return Instance(name: name, type: type, data: data, count: 0)
    
    }
    
    public func clearQuests(mysql: MySQL?=nil) throws {
        guard let mysql = mysql ?? DBController.global.mysql else {
            Log.error(message: "[INSTANCE] Failed to connect to database.")
            throw DBController.DBError()
        }
        
        var areaString = ""
        let areaType1 = data["area"] as? [[String: Double]]
        let areaType2 = data["area"] as? [[[String: Double]]]
        if areaType1 != nil {
            for coordLine in areaType1! {
                let lat = coordLine["lat"]
                let lon = coordLine["lon"]
                areaString += "\(lat!),\(lon!)\n"
            }
        } else if areaType2 != nil {
            for geofence in areaType2! {
                for coordLine in geofence {
                    let lat = coordLine["lat"]
                    let lon = coordLine["lon"]
                    areaString += "\(lat!),\(lon!)\n"
                }
            }
        }
        
        //TODO: Check if areaString is empty
        //TODO: Probably redundant
        let coords = Instance.flattenCoords(area: areaString)
        let sql = """
            UPDATE pokestop
            SET updated = UNIX_TIMESTAMP(), quest_type = NULL, quest_timestamp = NULL, quest_target = NULL, quest_conditions = NULL, quest_rewards = NULL, quest_template = NULL
            WHERE ST_CONTAINS(
              ST_GEOMFROMTEXT('POLYGON((\(coords)))'),
              POINT(pokestop.lat, pokestop.lon)
            ) AND quest_type IS NOT NULL
        """
        
        let mysqlStmt = MySQLStmt(mysql)
        _ = mysqlStmt.prepare(statement: sql)
        Log.debug(message: "SQL: \(sql)")
        
        guard mysqlStmt.execute() else {
            Log.error(message: "[INSTANCE] Failed to execute query. (\(mysqlStmt.errorMessage()))")
            throw DBController.DBError()
        }
        let results = mysqlStmt.results()
        if results.numRows == 0 {
            return
        }
    }
    
    public static func flattenCoords(area: String) -> String {
        var coords = ""
        var firstCoord = ""
        let areaRows = area.components(separatedBy: "\n")
        for (index, areaRow) in areaRows.enumerated() {
            let rowSplit = areaRow.components(separatedBy: ",")
            if rowSplit.count == 2 {
                let lat = rowSplit[0].trimmingCharacters(in: .whitespaces).toDouble()
                let lon = rowSplit[1].trimmingCharacters(in: .whitespaces).toDouble()
                if lat != nil && lon != nil {
                    let coord = "\(lat!) \(lon!)"
                    if index == 0 {
                        firstCoord = coord
                    }
                    coords += "\(coord),"
                }
            }
        }
        return coords + firstCoord
    }
    
    static func == (lhs: Instance, rhs: Instance) -> Bool {
        return lhs.name == rhs.name
    }
    
}
