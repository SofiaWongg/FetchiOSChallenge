//
//  CategoryView.swift
//  Fetch iOS Challenge
//
//  Created by Sofia Wong on 3/5/24.
//

import SwiftUI

struct CategoryView: View {
  @StateObject var viewModel:CategoryListViewModel
  
    var body: some View {
      NavigationView{
        CategoryListView(meals: viewModel.recipes)
          .task {
            await viewModel.populateCategories()
          }
          .navigationTitle("Dessert")
      }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
      CategoryView(viewModel: CategoryListViewModel())
    }
}

