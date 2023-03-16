//
//  DetailContentView.swift
//  my story
//
//  Created by TaeVon Lewis on 3/15/23.
//

import SwiftUI

struct DetailContentView: View {
    let contexts: [Context]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            ForEach(contexts) { context in
                VStack {
                    Image(context.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                    Text(context.description)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding()
                }
                .padding(.bottom)
                .navigationTitle(context.title)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            HStack {
                                Image(systemName: "chevron.left")
                                Text("Back")
                            }
                        }
                    }
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
    }
}

struct DetailContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailContentView(contexts: [
            Context(title: "About Me", image: "cid kagenou", description: "Fascinated by shadowbrokers, a young Japanese boy once trained for years to become a secret powerful individual while playing the role of a mob character in public. In his delusion, he ran into a truck and died, and reincarnated as Cid Kagenou.")
        ])
    }
}
