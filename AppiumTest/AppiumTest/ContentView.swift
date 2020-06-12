    //
    //  ContentView.swift
    //  AppiumTest
    //
    //  Created by William Repenning on 6/12/20.
    //  Copyright © 2020 William Repenning. All rights reserved.
    //
    
    import SwiftUI
    
    struct ContentView: View {
        @State private var isAlert = false
        
        var body: some View {
            VStack {
                Spacer()
                Text("Hello there.")
                Text("GENERAL KENOBI!")
                Spacer()
                Button(action: {
                    self.isAlert = true
                }) {
                    Text("Click").foregroundColor(Color.white)
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(8.0)
                .alert(isPresented: $isAlert) { () -> Alert in
                    Alert(title: Text("Your seatbelt is not on!"),
                          message: Text("You have been alerted that you are out of compliance."),
                          primaryButton: .default(Text("Got it."), action: {
                        print("Button 1 Clicked")
                          }), secondaryButton: .default(Text("I dare you to tell my supervisor!"), action: {
                            print("Button 2 clicked")
                          }))
                }
                Spacer()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
