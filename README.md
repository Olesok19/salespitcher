The StaffApp application is built on:
 * Ruby 2.5.3
 * Rails 5.2.1.1
 * postgresql 11.1
 * Webpack 3.12.0
 * Yarn 1.12.3
 
== New Development Machine Install (Mac)

Note: After installing something new it's generally a good idea to quit and restart terminal.

1. Install the latest version of XCode from the App store, run `$ xcode-select --install`
2. Install the latest version of Homebrew: http://brew.sh
3. Install Git on Mac using homebrew: `$ brew install git`
4. Set your GIT username from terminal: `$ git config --global user.name "YOUR NAME"`
5. Set your GIT email address from terminal: `$ git config --global user.email "YOUR EMAIL ADDRESS"`
6. Generate and add SSH keys your Github account by following the instructions at https://help.github.com/articles/generating-ssh-keys/
7. Install GPG using homebrew: `$ brew install gpg` (May be needed for RVM in next step)
8. Install the latest version of RVM: https://rvm.io
9. Install Ruby from terminal using RVM: `$ rvm install 2.5.3`
10. Install posgtresql from terminal: `$ brew install postgresql` and follow on screen instructions (very important)
11. Create postgresql superuser postgres: `$ createuser postgres -s`
12. CD to where you want your work projects in terminal and clone the git repo
13. Go into the directory '$ cd salespitcher/staffapp'. Confirm that when you run `$ rvm gemset list` it lists "staffapp" as your gemset.
14. Run `$ gem install bundler`
15. Run the commmand to bundle: `$ bundle`
16. Install redis using homebrew: `$ brew install redis`
17. Install Yarn `$ brew install yarn`
18. Install Webpack dependencies `yarn install`
19. Run rails db:create
20. Run rails db:migrate
19. Should be ready to roll: `$ rails s`
20. In Rubymine it's necessary to enable appropriate version of Javascript to make sure correct syntax highlighting.
    In Rubymine do the following:
    Rubymine (Top level menu on the left) Preferences - Languages & Frameworks - javascript - Javascript language version
    And choose "ECMA Script 6"

== Useful Mac goodies that are highly recommended
1. For pretty and customizable command line info, including branch and whether you have uncommited changes or not: https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
2. For a fast command line way to browse the most recent git commits: http://brewformulas.org/Tig
3. https://www.jetbrains.com/ruby/download

To check to make sure the code changes didn't break anything critical:

        $ rails db:test:prepare (if this fails try running rake parallel:create)
           or
        $ rake parallel:prepare

        $ rspec spec
           or
        $ parallel_rspec spec
        
=== Work with javascripts
Webpack goes with Babel to compile ES6 javascript code. This code placed in `app/javasript/src`. All old style javascripts (ES5) placed in `app/assets/javascript`.

Admin credentials to manual check the functionality:
        login: test1@gmail.com
        password: 3E4r5t_
        
== To check/click in emails in development environment:
1. Open another browser tab and go to `http://localhost:3000/letter_opener`
2. Click `Refresh` if needed
                