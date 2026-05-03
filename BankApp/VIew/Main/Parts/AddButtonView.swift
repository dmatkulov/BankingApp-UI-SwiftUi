struct AddButtonView: View {
    var body: some View {
        Button {
            //
        } label: {
            HStack{
                ZStack{
                    Circle()
                        .fill(Color(hex: "#13190F"))
                        .frame(width: 27, height: 27)
                    Image(systemName: "plus")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width: 14, height: 14)
                }
                Text("Add Card")
                    .font(type: .regular, size: 14)
            }
            .foregroundStyle(.black)
            .padding(5)
            .background(
                Capsule()
                    .fill(Color(hex: "C1EF00"))
            )
        }
    }
}
