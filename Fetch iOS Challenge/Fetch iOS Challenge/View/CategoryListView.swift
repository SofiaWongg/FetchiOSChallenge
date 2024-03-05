//
//  CategoryListView.swift
//  Fetch iOS Challenge
//
//  Created by Sofia Wong on 3/5/24.
//

import SwiftUI

struct CategoryListView: View {
  let meals: [MealObj]
  
  var body: some View {
    List(meals) {meal in
      NavigationLink(destination: DetailView(id: meal.id)){
        MealCellView(meal: meal)
      }
      
    }
  }
}

struct CategoryListView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryListView(meals: MockData.mealsList)
  }
}
