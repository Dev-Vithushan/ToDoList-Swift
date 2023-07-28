
import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subTitle: "Start Organizing todos", angle: -15, background: .orange)
            
            Form{
                TextField("Full Name",text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address",text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                SecureField("Enter your password",text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account",
                         background: .green
                )
                {
                    
                }
            }
              
            
            
            Spacer()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
