//
//  WeatherView.swift
//  WeatherApp
//
//  Created by 곽현우 on 9/24/24.
//

import SwiftUI

struct WeatherView: View {
    @ObservedObject var viewModel = WeatherViewModel()
    @State private var city: String = "Seoul"
    
    var body: some View {
        VStack {
            TextField("Enter city name", text: $city, onCommit: {
                viewModel.fetchWeather(for: city)
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            if viewModel.isLoading {
                ProgressView()
            } else if let weather = viewModel.weather {
                VStack {
                    Text("\(weather.name)의 날씨는")
                        .font(.largeTitle)
                        .padding()
                    Text("온도: \(weather.main.temp, specifier: "%.1f")°C")
                        .font(.title)
                    Text("습도: \(weather.main.humidity)%")
                        .font(.title2)
                    Text("Condition: \(weather.weather.first?.description.capitalized ?? "")")
                        .font(.title3)
//                    Text("바람 세기: \(weather.main.wind)")
                }
                .padding()
            } else if let errorMessage = viewModel.errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Blue"))
    }
}

//struct weatherImage: View {
//    @ObservableObject var viewModel = WeatherViewModel()
//    var body: some View{
//        VStack{
//            let weather = viewModel.weather
//            if weather.weather.first?.description.capitalized ?? ""
//        }
//    }
//}

#Preview {
    WeatherView()
}
