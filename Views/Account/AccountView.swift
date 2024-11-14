//
//  AccountView.swift
//  Appetizers
//
//  Created by Kapil Shivhare on 9/6/24.
//

import SwiftUI

struct AccountView: View {
        
    var body: some View {
        NavigationView {
            ProfileFormView()
        }
    }
}

#Preview {
    AccountView()
}

struct ProfileFormView: View {
    
    @State private var firstName = ""
    @State private var lastName  = ""
    @State private var email     = ""
    @State private var birthday     = Date()
    @State private var extraSpoons     = false
    @State private var refills     = false
    
    var body: some View {
        Form {
            Section("User Info") {
                TextField("First Name", text: $firstName)
                TextField("Last Name", text: $lastName)
                TextField("Email", text: $email)
                DatePicker("Birthday", selection: $birthday, displayedComponents: .date)
                Button {
                    print("Save changes tapped")
                } label: {
                    Text("Save Changes")
                }
            }
            Section("Preferences") {
                Toggle("Need extra spoons?", isOn: $extraSpoons)
                Toggle("Need Refills?", isOn: $refills)
            }
            
        }
        .navigationTitle("🧔‍♂️ Account")
    }
}
