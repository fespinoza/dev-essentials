import SwiftUI
import DevEssentials

public typealias PickableEnum = Hashable & Identifiable & RawRepresentable & CaseIterable

public struct EnumPicker<Element: PickableEnum>: View where Element.RawValue == String,
                                                            Element.AllCases == [Element] {
    public init(title: String, value: Binding<Element?>) {
        self.title = title
        self._value = value
    }

    let title: String
    @Binding var value: Element?

    public var body: some View {
        Picker(title, selection: $value) {
            ForEach(Element.allCases) { option in
                Text(option.rawValue.titleize).tag(Optional(option))
            }
        }
    }
}

//@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
//public struct Picker<Label, SelectionValue, Content> : View where Label : View, SelectionValue : Hashable, Content : View {
