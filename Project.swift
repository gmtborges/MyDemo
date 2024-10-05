import ProjectDescription

let project = Project(
    name: "MyDemo",
    targets: [
        .target(
            name: "MyDemo",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.MyDemo",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["MyDemo/Sources/**"],
            resources: ["MyDemo/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "MyDemoTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.MyDemoTests",
            infoPlist: .default,
            sources: ["MyDemo/Tests/**"],
            resources: [],
            dependencies: [.target(name: "MyDemo")]
        ),
    ]
)
