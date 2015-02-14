
Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
non_fiction = Genre.create!(name: 'Non-Fiction')
apple = Genre.create!(name: 'Apple')

Book.create!([{

  title: "The Hobbit",
  author: "JRR Tolkien",
  description: "A hobbit goes in search of a ring...",
  amazon_id: "054792822X",
  rating: 5,
  finished_on: 10.days.ago,
  genres: [non_fiction, apple]

},
{

  title: "The Catcher in the Rye",
  author: "J.D. Salinger",
  description: "A 16 year old hates everything...",
  amazon_id: "0316769487",
  rating: 3,
  finished_on: 25.days.ago,
  genres: [fiction]

}])

print "Created #{Book.count} books"
