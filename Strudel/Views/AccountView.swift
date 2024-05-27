//
//  AccountView.swift
//  Strudel
//
//  Created by Brandon Hollins on 5/25/24.
//

import SwiftUI

struct AccountView: View {
    @State var isPinned = false
    @State var isDeleted = false
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isLogged") var isLogged = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    profile
                }
                
                Section {
                    NavigationLink {} label: {
                        Label("Edit Profile", systemImage: "pencil")
                    }
                    
                    NavigationLink {} label: {
                        Label("Billing", systemImage: "creditcard")
                    }
                    
                    NavigationLink {} label: {
                        Label("Notifications", systemImage: "bell")
                    }
                    NavigationLink {} label: {
                        Label("Appearance", systemImage: "a")
                    }
                    NavigationLink {} label: {
                        Label("Privacy and Security", systemImage: "barcode")
                    }
                    NavigationLink {} label: {
                        Label("Help", systemImage: "questionmark.circle")
                    }
                    NavigationLink {} label: {
                        Label("Settings", systemImage: "gear")
                    }
                    
                    
                }
                .listRowSeparator(.automatic)
                
          
                
                
                
                
                Button {} label: {
                    Text("Sign out")
                        .frame(maxWidth: .infinity)
                }
                .tint(.red)
                .onTapGesture {
                    isLogged = false
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
            
        }
    }
        
        
        
    
        
        var profile: some View {
            VStack {
                Image(systemName: "person.crop.circle.fill.badge.checkmark")
                    .symbolVariant(.circle.fill)
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(Color("AccentColor"), .red.opacity(0.3), Color("AccentColor"))
                    .foregroundColor(Color("AccentColor"))
                    .font(.system(size: 32))
                    .padding()
                    .background(Circle().fill(.ultraThinMaterial))
                   
                   
                Text("Brandon Hollins")
                    .font(.title.weight(.semibold))
               
            }
            .frame(maxWidth: .infinity)
            .padding()
        
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

