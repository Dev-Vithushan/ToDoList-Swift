import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView(){
            VStack {
                HeaderView(title: "Get things Do", subTitle: "Make that one", angle: 30, background: .pink)
                 
                 Form {
                     TextField("Email Address", text: $viewModel.email)
                         .textFieldStyle(DefaultTextFieldStyle())
                         .autocapitalization(.none)
                     
                     SecureField("Enter your password", text: $viewModel.password)
                         .textFieldStyle(DefaultTextFieldStyle())
                     
                     TLButton(title: "Login", background: .blue, action: {
//                         <#code#>
                     })
                     .padding()
                 }
                
                VStack {
                    Text("New around here?")
        
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
    //            Spacer()
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
