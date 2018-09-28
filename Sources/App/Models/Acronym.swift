import Vapor
import FluentSQLite

final class Acronym: Codable {
    var id: Int?
    var short: String
    var long: String
    
    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

//extension Acronym: Model {
//    typealias Database = SQLiteDatabase
//    typealias ID = Int
//
//    public static var idKey: IDKey = \Acronym.id
//}
extension Acronym: SQLiteModel {} // compact version of above comment
extension Acronym: Migration {} // default implementation for Migration (continue in configure.swift)
extension Acronym: Content {}
