//
//  DetailView.swift
//  MythsByAV
//
//  Created by Estefano Zegarra on 11/28/19.
//  Copyright © 2019 UPC. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var god: GodViewModel
    @Binding var rating: Int
    var label = ""
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow
    @Environment(\.managedObjectContext) var moc
    //@FetchRequest(fetchRequest: GodData.allGodsFetchRequest()) var gods: FetchedResults<GodData>
    var body: some View {
        VStack() {
            Image("Busto-de-Poseidon")
            .resizable()
                .frame(width: 200, height: 200,alignment: .top)
            .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 4))
                .shadow(radius: 10)
            VStack(alignment: .leading) {
                Text(god.name)
                    .font(.title)
                HStack(alignment: .top) {
                    Text("Father")
                        .font(.subheadline)
                    Spacer()
                    Text(god.father)
                        .font(.subheadline)
                    }
                HStack(alignment: .top) {
                    Text("Mother")
                        .font(.subheadline)
                    Spacer()
                    Text(god.mother)
                        .font(.subheadline)
                }
                HStack(alignment: .top) {
                    Spacer()
                    ForEach(1..<maximumRating + 1) { number in
                        self.image(for: number)
                            .foregroundColor(number > self.rating ? self.offColor: self.onColor)
                            .onTapGesture {
                                self.rating = number
                                //let godD = GodData(context: self.moc)
                                //godD.id = self.god.id
                                //godD.rating = String(self.rating)
                                //try? self.moc.save()
                            }
                    }
                }
                //VStack() {
                    //Text(String(self.gods.first!.id))
                //}
                }
            .padding()
        }
    }
    func image(for number: Int) -> Image{
        if number > rating {
            return offImage ?? onImage
        }
        else{
            return onImage
        }
    }
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(god: GodListViewModel().gods[0], rating: .constant(4))
    }
}
