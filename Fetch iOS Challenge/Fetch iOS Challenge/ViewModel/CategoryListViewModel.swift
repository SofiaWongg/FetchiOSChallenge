//
//  CategoryListViewModel.swift
//  Fetch iOS Challenge
//
//  Created by Sofia Wong on 3/5/24.
//

import Foundation

@MainActor
class CategoryListViewModel: ObservableObject {
  
  @Published var recipes: [MealObj] = []
  
  func populateCategories() async {
    do {
      let categoryResponse = try await APICaller().getRecipes()
      recipes = categoryResponse.meals.sorted{ $0.strMeal < $1.strMeal } //Data come in sorted, but sorting just in case
    } catch let error {
      print(error)
    }
  }
}



