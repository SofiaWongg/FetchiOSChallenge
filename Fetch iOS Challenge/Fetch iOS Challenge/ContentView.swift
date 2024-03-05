//
//  ContentView.swift
//  Fetch iOS Challenge
//
//  Created by Sofia Wong on 3/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      CategoryView(viewModel: CategoryListViewModel())
    }
}

#Preview {
    ContentView()
}
