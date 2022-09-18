//
//  ContentView.swift
//  SwiftUI_Slots
//
//  Created by Esperanza on 2022-09-14.
//

import SwiftUI

struct ContentView: View {
  
  @State private var credit = 1000
  @State private var slot1 = 1
  @State private var slot2 = 1
  @State private var slot3 = 1
  
    var body: some View {
      VStack {
        Spacer()
        Text("SwiftUI Slots!")
          .font(.largeTitle)
        Spacer()
        Text("Credits: \(credit)")
          
        Spacer()
        HStack {
          Image("fruit\(slot1)")
            .resizable()
            .aspectRatio(contentMode: .fit)
          
          Image("fruit\(slot2)")
            .resizable()
            .aspectRatio(contentMode: .fit)
          
          Image("fruit\(slot3)")
            .resizable()
            .aspectRatio(contentMode: .fit)
        }
        Spacer()
        Button("Spin") {
          
          // Randomize the numbers
          slot1 = Int.random(in: 1...3)
          slot2 = Int.random(in: 1...3)
          slot3 = Int.random(in: 1...3)
          
          // Update credits based on match or not
          if slot1 == slot2 && slot2 == slot3 {
            // Match
            credit += 15
          }
          else {
            credit -= 5
          }
        }
        .padding()
        .padding([.leading, .trailing], 40.0)
        .foregroundColor(.white)
        .background(Color(.systemPink))
        .cornerRadius(25)
        .font(.system(size: 18, weight: .bold, design: .default))
        Spacer()
          
        }}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
