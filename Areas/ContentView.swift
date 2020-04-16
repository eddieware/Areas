//
//  ContentView.swift
//  Areas
//
//  Created by EDUARDO MEJIA on 22/02/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                //Uso del Navigation Link
                NavigationLink(destination: AreaTriangulo()){
                    HStack{
                        Image("triangulo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 100.0)
                        Text("Área del Triangulo")
                    }
                }
               
                
            }
        }//Fin List
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
