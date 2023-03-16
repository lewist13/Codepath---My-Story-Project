//
//  ContentView.swift
//  my story
//
//  Created by TaeVon Lewis on 3/15/23.
//

import SwiftUI

struct Context: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let description: String
}

struct ContentView: View {
    let contexts: [Context] = [
        Context(title: "About Me", image: "cid kagenou", description: "Fascinated by shadowbrokers, a young Japanese boy once trained for years to become a secret powerful individual while playing the role of a mob character in public. In his delusion, he ran into a truck and died, and reincarnated as Cid Kagenou."),
        Context(title: "Powers and Abilities", image: "cid kagenou powers", description: "Iris Midgar, upon facing him under his \"Shadow\" persona, claimed Cid to be \"the most powerful being in the world\". So far, even though he has yet to go all-out, all of Cid's battles have ended with overwhelming victories."),
        Context(title: "Shadow Garden Members", image: "shadow garden", description: "Shadow Garden is an mysterious hidden organization founded by Cid Kagenō also known as Shadow. Its primary goal was to eliminate the Cult of Diablos and prevent them from resurrecting the ancient demon, Diabolos.")
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Image("lord shadow")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                ForEach(contexts) { context in
                    NavigationLink(destination: DetailContentView(contexts: [context])) {
                        Text(context.title)
                            .foregroundColor(.blue)
                            .padding(.init(top: 5, leading: 0, bottom: 0, trailing: 0))
                    }
                }
                .navigationTitle("Lord Shadow")
                .navigationBarTitleDisplayMode(.inline)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
