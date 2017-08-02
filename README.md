# Listception Associations

## Associations practice

In this project, you will build a simple clone of [Trello](https://trello.com/).

### [Here is your target.](https://listception-associations.herokuapp.com/)

## Setup

 1. Set up [a Cloud9 workspace as usual](https://guides.firstdraft.com/getting-started-with-cloud-9.html).
 1. `bin/setup`
 1. Run project
 1. I've already generated starter resources for you, and you'll find some dummy data already exists.
 1. Your job is to add association helper methods between boards, lists, cards, and tags as needed; then make your app match the target.
 1. The key page to work on improving is `boards#show`. Here I can see a board's lists, the cards on each list, add a new list, and add a card to each list.
 1. There are no tests/CI for this project. Just make your app match the target, and ask lots of questions — relating resources together and making them show up on each other's pages is most of what you'll have to do on your project!
 1. Stretch goals: You can visit the real [Listception](http://www.listception.com) and sign up for an account. You'll see there that after you add a card to a list, you can click on the card and it becomes its own board, which can have its own lists and cards, which can become their own boards, etc etc, ...!

     If you wanted to add functionality like that to your Listception (minus the signing up part), how would you go about it? Make a new branch and give it a shot.

     You could also work on getting the side by side list column styling if you want to (hint: there's a css property called `overflow-x`).
