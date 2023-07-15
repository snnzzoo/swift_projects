import SwiftUI

struct TextFieldView: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            // $은 two way binding을 의미한다.
            Text("Your name is \(name)")
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
