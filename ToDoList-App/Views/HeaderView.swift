
import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
//                    .offset(y: -200)
                
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    
                    Text(subTitle)
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
        HeaderView(title: "To-Do-List", subTitle: "Get things do", angle: 30, background:.pink)
    }
}
