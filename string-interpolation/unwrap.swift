import Playgrounds

extension String.StringInterpolation {
    mutating func appendInterpolation<T>(
        maybe: T?,
        fallback: String = "N/A"
    ) {
        if let maybe {
            appendInterpolation("\(maybe)")
        } else {
            appendInterpolation(fallback)
        }
    }
}

#Playground {
    let something: String? = "Angel"

    print("printing: \(maybe: something)")
}
