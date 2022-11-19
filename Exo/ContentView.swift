//
//  ContentView.swift
//  Exo
//
//  Created by Atika Haryouli on 19/11/2022.
//

import SwiftUI

struct ContentView: View {

    
    @State private var counter : Int = 1
    var body: some View {
        
        ZStack{
            LinearGradient(colors: [ Color("rosefluo"), Color("violet"),Color("violet2")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(spacing:60){
                
                    Text("\(counter)")
                        .foregroundColor(.white)
                        .bold()
                        .font(.system(size:100))
                
            HStack(spacing: 40) {

            Button(action: {self.counter -= 1},label: {
                   
                   Circle()
                       .frame(width: 90, height: 90)
                       .foregroundColor(Color("rosefluo"))
                       .overlay(
                           Text("-")
                       .foregroundColor(.white)
                       .font(.system(size: 60))
                       .bold()
                   )
                       .shadow(color: Color("rosefluo"), radius: 15, x: 3, y: 3)
    
            })
    
            
                
            Button(action: {self.counter += 1}) {
                Circle()
                    .frame(width: 90, height: 90)
                    .foregroundColor(Color("rosefluo"))
                    .overlay(
                        Text("+")
                    .foregroundColor(.white)
                    .font(.system(size: 60))
                    .bold()
                )
                    .shadow(color: Color("rosefluo"), radius: 10, x: 3, y: 3)
            }
          
           
    }
        
                Button(action: {counter=0},
                       label: {Text("Retour à 0")
                        .foregroundColor(.white)
                        .font(.system(size: 25))
                        .bold()
                    
                    })
                
                
}
    }
}
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
