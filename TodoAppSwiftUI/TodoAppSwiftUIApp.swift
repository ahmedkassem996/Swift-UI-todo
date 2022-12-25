//
//  TodoAppSwiftUIApp.swift
//  TodoAppSwiftUI
//
//  Created by Ahmed Kasem on 01/12/2022.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 
 viewModel - manages models for view
 */

@main
struct TodoAppSwiftUIApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
