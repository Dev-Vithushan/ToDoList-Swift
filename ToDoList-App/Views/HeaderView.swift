
import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
//                    .offset(y: -200)
                
                VStack {
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Text("Get Things done")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                    
                }
//                .offset(y: -200)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y:-100)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}