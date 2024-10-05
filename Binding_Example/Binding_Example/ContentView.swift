//
//  ContentView.swift
//  Binding_Example
//
//  Created by Bill Skrzypczak on 9/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = false

    var body: some View {
        VStack {
            Text("Parent View")
            Toggle(isOn: $isOn) {
                Text("Toggle Switch")
            }
            .padding()

            ChildView(isOn: $isOn)
        }
    }
}

struct ChildView: View {
    @Binding var isOn: Bool

    var body: some View {
        VStack {
            Text("Child View")
            Text(isOn ? "Switch is ON" : "Switch is OFF")
                .font(.title)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
