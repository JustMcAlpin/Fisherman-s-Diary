//
//  Binding+Extension.swift
//  Fisherman's Keeper
//
//

import Foundation
import SwiftUI

// Function to add ?? (nil coalescing) oprator for @Binding
public func ??<T>(lhs: Binding<Optional<T>>, rhs: T) -> Binding<T> {
    Binding(
        get: { lhs.wrappedValue ?? rhs },
        set: { lhs.wrappedValue = $0 }
    )
}
