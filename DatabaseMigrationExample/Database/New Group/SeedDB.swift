//
//  SeedDB.swift
//  DatabaseMigrationExample
//
//  Created by Vikram Grewal on 9/4/18.
//  Copyright © 2018 Vikram Grewal. All rights reserved.
//

import Foundation
import SQLite
import SQLiteMigrationManager

struct SeedDB : Migration {
    var version: Int64 = 2
    
    func migrateDatabase(_ db: Connection) throws {
        do {
            let movies = Table("Movies")
            let directorName = Expression<String?>("directorName")
            let _ = try db.run(movies.addColumn(directorName))
        }
    }
    
}
