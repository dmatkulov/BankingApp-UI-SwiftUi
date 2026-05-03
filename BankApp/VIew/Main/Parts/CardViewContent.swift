struct CardViewContent: View {
     var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 30){
                VStack(alignment: .leading, spacing: 20) {
                    HStack{
                        Text("VISA")
                            .font(type: .medium, size: 17)
                        Spacer()
                        Text("Exp 07/27")
                            .font(type: .regular, size: 16)
                    }
                    
                    VStack(alignment: .leading, spacing: 20){
                        VStack(alignment: .leading, spacing: 10){
                            Text("Card balance")
                                .font(type: .regular)
                            Text("$ 37,878.00")
                                .foregroundStyle(.white)
                                .font(type: .bold, size: 36)
                        }
                        
                        Text("**** **** **** 4242")
                            .font(type: .regular, size: 17)
                    }
                    
                    Text("Sajibur Rahman")
                        .font(type: .regular)

                }
                Spacer()
                
                Button {
                    //
                } label: {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(hex: "#C1EF00"))
                        .frame(width: 56)
                        .frame(height: 155)
                        .overlay(
                            Image(.nfc)
                                .resizable()
                                .frame(width: 27, height: 27)
                        )
                }
                
            }
         }
        .padding(20)
        .foregroundStyle(Color(hex: "#B5B7B2"))
    }
}
