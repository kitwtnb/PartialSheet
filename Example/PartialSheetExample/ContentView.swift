//
//  ContentView.swift
//  PartialSheetExample
//
//  Created by Bobby Schultz on 1/29/20.
//  Copyright © 2020 Swift. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var partialSheet : PartialSheetManager

    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                Text("""
                Hi, this is the Partial Sheet modifier.

                On iPhone devices it allows you to dispaly a totally custom sheet with a relative height based on his content.
                In this way the sheet will cover the screen only for the space it will need.

                On iPad and Mac devices it will present a normal .sheet view.
                """)
                    .padding()
                Spacer()

                Text("Examples").font(.headline)
                    .padding()

                List {

                    NavigationLink(
                        destination: NormalExample(),
                        label: {Text("Normal Example")

                    })
                    NavigationLink(
                        destination: TextfieldExample(),
                        label: {
                            Text("Textfield Example")

                    })
                    NavigationLink(
                        destination: ListExample(),
                        label: {Text("List Example")

                    })
                }
                Spacer()
                Spacer()
            }
            .navigationBarTitle("Partial Sheet")
        }
        .addPartialSheet()
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

