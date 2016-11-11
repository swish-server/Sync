import XCTest
@testable import Sync

class SyncTests: XCTestCase {

    private let currentDirectory = "."

    func testLocalSyncing() {
        let synchronizer = Synchronizer()

        let source = currentDirectory
        let destination = currentDirectory
        try? synchronizer.sync(from: source, to: destination)
    }

    func testLocalSyncingWithExcludingFiles() {
        let synchronizer = Synchronizer()

        let source = currentDirectory
        let destination = currentDirectory
        let excludedFiles = [ ".DS_STORE", ".gitignore" ]
        try? synchronizer.sync(from: source, to: destination, exclude: excludedFiles)
    }


    static var allTests : [(String, (SyncTests) -> () throws -> Void)] {
        return [
            ("testLocalSyncing", testLocalSyncing),
        ]
    }
}
