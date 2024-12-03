import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .preference(key: MyPreferenceKey.self, value: "Some value")
    }
}

struct MyPreferenceKey: PreferenceKey {
    typealias Value = String
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}
