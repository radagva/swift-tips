import Playgrounds

extension String.StringInterpolation {
    mutating func appendInterpolation<Root, Value>(
            value: Root?,
            keyPath: KeyPath<Root, Value>,
            fallback: String = "N/A"
        ) {
            if let value {
                appendInterpolation("\(value[keyPath: keyPath])")
            } else {
                appendInterpolation(fallback)
            }
        }
}

#Playground {
    struct User {
        struct Hobby {
            let id: Int
            let name: String
        }

        let id: Int
        let name: String
        let hobbies: [Hobby]
    }

    let user: User? = nil
        //.init(id: 1, name: "Angel", hobbies: [.init(id: 1, name: "coding")])

    print("name: \(value: user, keyPath: \.hobbies[0].name)")
}
