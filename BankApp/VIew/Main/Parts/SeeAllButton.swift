struct SeeAllButton: View {
    var body: some View {
        Button {
            //
        } label: {
            HStack{
                Text("see all")
                Image(systemName: "chevron.down")
            }
            .font(type: .regular, size: 16)
            .foregroundStyle(Color(hex: "#B5B7B2"))
        }
    }
}