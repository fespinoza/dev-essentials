import SwiftUI

public extension Binding {
    /// Converts an Binding<Value?> to Binding<Value> with a default value
    /// - Returns: a new version of this binding that will update the original wrapped value
    func unwrap<T>(withDefaultValue defaultValue: T) -> Binding<T> where Value == Optional<T> {
        .init {
            wrappedValue ?? defaultValue
        } set: { newValue in
            wrappedValue = newValue
        }
    }

    /// Creates an optional binding from a concrete one
    /// - Returns: new binding with type Binding<Value?>
    func optionalVersion() -> Binding<Optional<Value>> {
        .init {
            .some(wrappedValue)
        } set: { newValue in
            guard let newValue = newValue else { return }
            wrappedValue = newValue
        }
    }
}
