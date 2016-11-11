import Foundation
import CommandLine

public struct Synchronizer: Syncable {

    private let commandLine = CommandLine()

    public init() { }

    public func sync(from source: String, to destination: String, exclude excludedFiles: [String] = []) throws {
        print("Sync from \(source) to \(destination), excluding \(excludedFiles)")

        let command = "/usr/bin/rsync"
        let arguments = [
            "-azP",
            excludedFiles.flatMap({"--exclude=\"\($0)\""}).joined(separator: " "),
            source,
            destination
        ]

        let result = commandLine.execute(command, with: arguments)

        switch result {
        case .output(let output):
            print(output)
        case .error(let message):
            throw SyncError.couldNotConnect(message)
        }
    }

}
