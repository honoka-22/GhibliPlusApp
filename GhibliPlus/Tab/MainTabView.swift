//
//  MainTabView.swift
//  GhibliPlus
//
//  Created by cmStudent on 2022/09/16.
//

import SwiftUI

struct MainTabView: View {
    
    init(){
        // TabViewの背景有効・色の設定
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.black
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
        // 非選択中のタブの色
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
    
    
    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }.tag(1)
            
            
            DownloadView()
                .tabItem {
                    Image(systemName: "plus.square")
                    Text("Download")
                }.tag(2)
            
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }.tag(3)
        }
        .accentColor(.white) // 選択中のタブの色
    }
    
}
