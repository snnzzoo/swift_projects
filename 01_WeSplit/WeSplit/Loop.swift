import SwiftUI

struct LoopView: View {
    
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Ron"
    
    var body: some View {
        NavigationStack {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct LoopView_Previews: PreviewProvider {
    static var previews: some View {
        LoopView()
    }
}
