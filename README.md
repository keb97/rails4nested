Rails 4 Nested Resources Example
================================

About
-----

This is a short example of creating a nested resource in Rails 4. The MVC was originally created using rails scaffold.

In this example, a book has_many dedications, and a dedication belongs_to a book.

You can see where the whitelisting of resources occurs in the books_controller and the dedications_controller.

This app only includes the CR steps of CRUD, but I hope it can still be instructive.

Get started
-----------

Assuming you're all set up with Rails on your machine, it's easy! To try this app in your browser, clone the repo and then run:

- bundle install
- rake db:migrate
- rails s

First you'll create a book. Then, after you've created the book, you can create a dedication for the book.
