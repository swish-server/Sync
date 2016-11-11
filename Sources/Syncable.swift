import Foundation

public protocol Syncable {

    func sync(from source: String, to destination: String, exclude excludeFilter: [String]) throws

}
