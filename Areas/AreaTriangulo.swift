//
//  AreaTriangulo.swift
//  Areas
//
//  Created by EDUARDO MEJIA on 22/02/20.
//  Copyright © 2020 EDDIEWARE. All rights reserved.
//

import SwiftUI

struct AreaTriangulo: View {
    @State var base = ""
    @State var altura = ""
    
    var area: Double{
        let longitud_Base   = Double(base) ?? 0
        let longitud_Altura = Double(altura) ?? 0
        let response_Area =  longitud_Base * longitud_Altura / 2
        return response_Area
    }
    
    var body: some View {
        Group{
            Image("triangulo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 180.0, alignment: .center)
            //.clipShape(Circle())
            Form{
                Section(header: Text("Datos de Entrada")){
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
            }.navigationBarTitle(Text("Área del Triangulo"))
        }
    }
}

struct AreaTriangulo_Previews: PreviewProvider {
    static var previews: some View {
        AreaTriangulo()
    }
}
