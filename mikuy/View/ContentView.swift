//
//  ContentView.swift
//  mikuy
//
//  Created by miguel tomairo on 4/11/20.
//  Copyright © 2020 rapser. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
                
        ZStack{
            
            NavigationView {

                Home().navigationBarTitle("Home", displayMode: .inline)
                .navigationBarItems(trailing:

                    Button(action: {
                        
                        self.show.toggle()
                        
                    }, label: {

                        Image(systemName: "cart.fill")
                        .font(.body)
                        .foregroundColor(.black)
                    })

                )
            }
            
            if self.show {
                
                GeometryReader{ _ in
                    
                    CartView()
                    
                }.background(
                    Color.black.opacity(0.55)
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        
                        self.show.toggle()
                    }
                )
            }
            
        }.animation(.linear(duration: 1.0))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
