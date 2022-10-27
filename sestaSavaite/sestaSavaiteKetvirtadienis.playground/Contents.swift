import UIKit


//MARK: parent class

class Item  {
    var title: String
//    var type: String
    var description: String
    
    init(itemTitle: String, //itemType: String,
         itemDescription: String){
        self.title = itemTitle
//        type = itemType
        self.description = itemDescription
    }
    
    func viewDescription(){
        print("Parent klsae")
    }
}

// MARK: child classes

class Book: Item {
    var author: String
    var isbn: String
    
    init(bookTitle: String, bookDescription: String, bookAuthor: String, bookIsbn: String){
        self.author = bookAuthor
        self.isbn = bookIsbn
        
        super.init(itemTitle: bookTitle, itemDescription: bookDescription)
    }
    
    override func viewDescription() {
        print("book author \(author) and ISBN no \(isbn)")
    }
}
class Dvd: Item {
    var director: String
    var certificate: String
    
    init(dvdDirector: String, dvdSertificate: String, dvdTitle: String, dvdDescription: String){
        self.director = dvdDirector
        self.certificate = dvdSertificate
        
        super.init(itemTitle: dvdTitle, itemDescription: dvdDescription)
    }
    override func viewDescription() {
        print("Movie \(title). \(description). Movie director is \(director). DVD certified \(certificate)")
    }
}

class Cd: Item {
    var artist: String
    var genre: String
    var numberOfTracks: Int
    
    init(cdTitle: String, cdArtist: String, cdDescription: String, cdGenre: String, numberOfCdTracks: Int){
        self.artist = cdArtist
        self.genre = cdGenre
        self.numberOfTracks = numberOfCdTracks
        
        super.init(itemTitle: cdTitle, itemDescription: cdDescription)
    }
    
    override func viewDescription() {
        print("Music title: \(title) about \(description). Artist \(artist) of genre \(genre). Contains \(numberOfTracks) \(numberOfTracks > 1 ? "tracks" : "track")")
    }
}

let kompaktas = Cd(cdTitle: "Modern Talking Best 25th edition", cdArtist: "Modern Talking", cdDescription: "Kazkas", cdGenre: "kazkoks", numberOfCdTracks: 9)
print(kompaktas.viewDescription())
print(kompaktas.description)

//MARK: LIBRARY

class Library{
    private var items: [Item] = []
    
    func addItem(_ item: Item) {
        items.append(item)
    }
    func removeItem(_ item: Item) {
        if let index = items.firstIndex(where: { $0.title == item.title } ) {
            let removedItem = items.remove(at: index)
            print("removed item \(removedItem.description)")}
        else {
            print("there is no such item")}

//  dar variantas:
//        let secondIndex = items.firstIndex(where: { passedItem in item.title == passedItem.title})
    }
    
    func listItem() {
        items.forEach { item in
            item.viewDescription()
        }
    }
    func numbersOfItems() -> Int {
        return items.count
    }
    
    func reset() {
        return items = []
    }
    func isEmpty() -> Bool {
        return items.isEmpty
    }
}

// MARK: TEST

let item1 = Cd(cdTitle: "Silent", cdArtist: "Depeche", cdDescription: "No description", cdGenre: "electronic", numberOfCdTracks: 1)


let item2 = Dvd(dvdDirector: "Matrix", dvdSertificate: "Trinity and Neo shooting and flying", dvdTitle: "Wachovskei", dvdDescription: "golden")

let item3 = Book(bookTitle: "Ziedu valdovas", bookDescription: "Nykstukai ir elfai", bookAuthor: "Tolk", bookIsbn: "Labai geras ISBNS")

let biblioteka = Library()

biblioteka.addItem(item1); biblioteka.addItem(item2); biblioteka.addItem(item3)

biblioteka.listItem()
biblioteka.removeItem(item3)
biblioteka.removeItem(item3)
print("Number of items \(biblioteka.listItem())")
print("Library is \(biblioteka.isEmpty() ? "empty" : "occupied")")
biblioteka.reset()
print("Number of items \(biblioteka.listItem())")
print("Library is \(biblioteka.isEmpty() ? "empty" : "occupied")")
