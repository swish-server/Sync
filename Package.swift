import PackageDescription

let package = Package(
    name: "Sync",
    dependencies: [
        .Package(url: "https://github.com/swish-server/CommandLine.git", majorVersion: 0)
    ]
)
