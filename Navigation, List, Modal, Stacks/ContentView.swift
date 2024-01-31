import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(animals) { animal in // Fix the parameter name here
                NavigationLink(destination: DetailView(animal: animal)) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(animal.title)").font(.system(size: 10, weight: .bold))
                            Text("\(animal.subtitle)")
                        }
                        Spacer()
                        Image(animal.image).resizable().frame(width: 100, height: 100).clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                    }
                }
            }.navigationBarTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ListItem: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
}

var animals = [ // Fix the array declaration here
    ListItem(title: "Dolphins", subtitle: "Look how cool they are swimming", image: "dolphins"),
    ListItem(title: "Monkeys", subtitle: "I wonder if this in Bali", image: "monkeys"),
    ListItem(title: "Sea Turtle", subtitle: "This was my favorite image chosen", image: "turtle"),
    ListItem(title: "Cool Looking Goat", subtitle: "Check out this horns", image: "goat"),
    ListItem(title: "Cute Mouse", subtitle: "Check out his horns", image: "mouse"),
]
