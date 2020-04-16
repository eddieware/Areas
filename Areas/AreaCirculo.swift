//
//  AreaCirculo.swift
//  Areas
//
//  Created by EDUARDO MEJIA on 16/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//


import SwiftUI

struct AreaCirculo: View {
    @State var radio = ""
    var area: Double{
        let longitud_Radio = Double(radio) ?? 0
        let response_Area =  pow(longitud_Radio, 2) * Double.pi
        return response_Area
    }
   
    var body: some View {
        Group{
            Image("circulo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 180.0, alignment: .center)
            //.clipShape(Circle())
            Form{
                Section(header: Text("Datos dpara el calculo")){
                    Text("Valor del radio")
                    TextField("Radio:", text: $radio)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Resultado")){
                    Text("Area: \(area, specifier: "%.2f")")
                }
            }.navigationBarTitle(Text("Área del Circulo"))
        }
    }
}
