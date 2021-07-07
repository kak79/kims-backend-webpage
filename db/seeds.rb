# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.create(
  [
    {
      title: "Creating a Custom RegEx",
      summary: "Want to have a little programming fun? Let's create a RegEx! What is a RegEx? Well funny you should ask that! A RegEx or Regular Expression is a search string of condensed datum. Let's say you wanted to search for all capital letters in a given set of text. How would you go about it? A RegEx. This post will explore creating a RegEx for few different situations."
    },
    {
      title: "Selecting Hashes from an API",
      summary: "Selecting hashes from an API can seem like a very complicated process, so let's take it one step at a time. We will be storing everything in variables for ease of access. The definition to a variable can be found..."
    },
    {
      title: "Which Class? Puts it in?",
      summary: "I just wrote a CLI (Command Line Interface) app. I do not say finished, because I'm still refactoring it. I have multiple classes in this app. The viewpoints on class responsibility vary. Specifically the interface class responsibility versus the methods class. Some say that you could put puts, inputs and gets methods in whichever class you could justify them."
    },
  ]
)