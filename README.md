# Listception Associations

## Windows bcrypt error

Note: Windows users, at some point you may run into an error with the `bcrypt` gem when you try to `rails db:seed` or sign in with the admin user. In order to resolve,

 1. Shut down your `rails server` if you have one running, and/or
 1. Launch Command Prompt with Ruby on Rails, and navigate to your project folder.
 1. At the command line, run:

    ```ruby
    gem uninstall bcrypt
    ```

    If you're asked "Continue with Uninstall?", answer "y".

 1. At the command line, run:

    ```ruby
    gem uninstall bcrypt-ruby
    ```

    If you're asked "Continue with Uninstall?", answer "y".

 1. At the command line, run:

    ```ruby
    gem install bcrypt --platform=ruby
    ```

    If you're asked "Continue with Uninstall?", answer "y".

 1. In Atom, add the following to the `/Gemfile`:

    ```ruby
    gem 'bcrypt', platforms: :ruby
    ```

 1. At the command line, run: `bundle install`
 1. (Re)start your `rails server`, and you should be good to go!

## Associations practice

In this project, you will build a simple clone of [Trello](https://trello.com/).

### [Here is your target.](https://listception-associations.herokuapp.com/)

## Setup

 1. `bundle`
 1. `rails db:migrate`
 1. `rails db:seed`

## Standard Workflow

 1. Fork to your own account.
 1. Clone to your computer.
 1. In the GitHub Desktop app, [create a branch for your work](https://help.github.com/desktop/guides/contributing/creating-a-branch-for-your-work/#creating-a-branch).
 1. Open the entire folder you downloaded in Atom.
 1. Make your first change to the code. (You could modify this `README.md` file by adding your username next to the project in the heading, for example.)
 1. In the GitHub Desktop app, create a commit. You *must* type a "summary"; "description" is optional.
 1. Click Publish. Verify that your branch is now visible on your fork at GitHub.com in the "Branch" dropdown.
 1. **Commit and Sync often as you work.**
 1. Make new branches freely to experiment! You can always switch back to an older branch using the dropdown in the Desktop App, and all of your files will instantly snap back to their older state. **So, when in doubt, create a branch**, _especially_ before starting on a new task.
 1. You don't need to merge back into your master branch; in the end, just stay on whatever your best branch is. (In the real world, you would ultimately merge your best branch back into your master branch and deploy it to your production server.)
 1. Run `rails grade` as often as you like to see how you are doing.
 1. You can push commits and `rails grade` right up until the due date.
 1. If you have a question about your code, a great way to get feedback is to open a [Pull Request](https://help.github.com/articles/creating-a-pull-request/). After creating it, if you include the URL of your Pull Request when you post your question, reviewers will be able to easily see the changes you've made and leave comments on each line of your code with suggestions.
