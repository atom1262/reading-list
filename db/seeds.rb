
Book.destroy_all

Book.create!([{

  title: "The Hobbit",
  author: "JRR Tolkien",
  description: "A hobbit goes in search of a ring...",
  amazon_id: "054792822X"

},
{

  title: "The Catcher in the Rye",
  author: "J.D. Salinger",
  description: "A 16 year old hates everything...",
  amazon_id: "0316769487"

}])

print "Created #{Book.count} books"
