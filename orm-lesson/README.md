# README

Ruby syntax - https://github.com/ThibaultJanBeyer/cheatsheets/blob/master/Ruby-Cheatsheet.md

# Setup
- Create a user in db:

  ```sudo su postgres -c "psql -c \"CREATE ROLE root SUPERUSER LOGIN PASSWORD 'ormlesson'\""```
- Clone repo - ```git clone https://github.com/RoadToSoftwareFactory/swi2-2019```
- ```cd swi2---2019/orm-lesson/```
- ```bundle install``` (```bundle``` is a tool for managing dependencies)
- Run ```rake db:setup``` (```rake``` is a build automation tool, similar to ```make``` :) )


# Create a model

- To create Book model you need to run ```rails g model Book title:string published_at:datetime```
- Create Author model in the same way, author should have attribute ```name``` of type ```string```, ```id``` attribute is created automatically

- To put the model into database, we need to run a migration ```rake db:migrate```

# Create associations

Rails supports six types of associations:

```
belongs_to
has_one
has_many
has_many :through
has_one :through
has_and_belongs_to_many
```

In our example we'll use belongs_to

![](https://guides.rubyonrails.org/images/belongs_to.png)

To create an association you'd need to open the model file in ```app/models/``` and declare the book model this way:

```
class Book < ApplicationRecord
  belongs_to :author
end
```

Now we need to update database, and we'll need a migration for this, let's create it like this:

```rails g migration add_author_to_books author:references```

And then run this migration ```rake db:migrate```

Ruby On Rails understands how to extend our model from the name of migration, in our case it's ```add_author_to_book```

# Let's play with our models in console:

- We need to seed our database with some default data, for this we need to use ```rake db:seed``` command. It will create some authors and books for us.

- Start rails console with ```rails c``` command

- Let's see all authors and books we have, it can be done with ```Author.all``` and ```Book.all```

  The SQL equivalent of the above is:
  
  ```SELECT "authors".* FROM "authors"```
  ```SELECT "books".* FROM "books"```

- Now, we want to get all books written by 'Third Author', for this we can use ```where``` method, our query will look like this ```Book.where(author_id: 3)```

  The SQL equivalent of the above is:

  ```SELECT * FROM books WHERE (books.author_id = 3)```

- We also want to know name of author that has ID 3, that is done using ```find```: 
  ```
  author = Author.find(3)
  author.name
  ```
  The SQL equivalent of the above is:

  ```SELECT * FROM authors WHERE (authors.id = 3) LIMIT 1```

- Our Book model misses genre, let's extend it:
  - First, exit the console(ctr+d)
  - Create a migration and name it ```add_genre_to_book```
  - The genre shoud be of a type string
  - Now run created migration

- Let's now set a genre for book:
  - Run console
  - Find book with ID 2, and assign it to a variable ```book```
  - Now you can set the genre ```book.genre = 'Fantasy'```
  - Our final step of setting genre is saving the book ```book.save```

- What if we would need to get the books of a genre 'Fantasy' and book that where not written by 'Third Author'(id 3)?
  - This is more complicated query and it looks like this ```Book.where(genre: 'Fantasy').or(Book.where.not(author_id: 3))```

# CRUD (Create, Read, Update, Delete)

We already had an example of updating an attribute and getting a record, now we'll try to add new author and then delete it.

- For creating an Author record, we'll need to use ```create``` method. Call it on `Author` model and pass attribute name as parameter (```name: 'Some name'```)

- The record can be delete with ```destroy``` method.
  - Find created author using ```find_by``` method, pass attribute name as argument(```name: 'Some name'```) and delete it, calling destroy







