//
//  AreaRectangulo.swift
//  Areas
//
//  Created by EDUARDO MEJIA on 16/04/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct AreaRectangulo: View {
    @State var base = ""
    @State var altura = ""
    
    var area: Double{
        let longitud_Base   = Double(base) ?? 0
        let longitud_Altura = Double(altura) ?? 0
        let response_Area =  longitud_Base * longitud_Altura
        return response_Area
    }
    
    var body: some View {
        Group{
            Image("rectangulo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 180.0, alignment: .center)
            //.clipShape(Circle())
            Form{
                Section(header: Text("Datos para el calculo")){
                    Text("Longitud de la base")
                    TextField("Base:", text: $base)
                    .keyboardType(.decimalPad)
                    Text("Longitud de la altura")
                    TextField("Altura:", text: $altura)
                    .keyboardType(.decimalPad)
                }
                Section(header: Text("Resultado")){
                    Text("Area: \(area, specifier: "%.2f")")
                }
            }.navigationBarTitle(Text("Área del rectangulo"))
        }
    }
}
