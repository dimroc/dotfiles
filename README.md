Resource Configurations
=======================

git clone this repo into a folder and run `create_symlinks.sh` to automatically wire up the `.rc` files to your bash profile.

For vim set up please see the [vim-config](https://github.com/dimroc/vim-config).

How to use
----------

The color scheme used for bash is [Solarized Dark Color Scheme](https://github.com/altercation/solarized).
Please follow the instructions there for Solarized. You can continue without Solarized.

1. Create soft links from your **home directory** to this repo's folder:

    ```
    ~$ ./workspace/dotfiles/create_symlinks.sh # Where ./workspace/dotfiles is the location of this repo
    ```

2. Copy `gituserconfig.template` to `gituserconfig` in the repo's folder and add your personal information.

    ```
    [user]
      name = Your Name
      email = your@email.com
    [github]
      user = Username
    ```

    Becomes

    ```
    [user]
      name = Dimitri Roche
      email = personal@email.com
    [github]
      user = dimroc
    ```

Some of the features
====================

Bash Profile - .bash_profile
----------------------------

* A respectable prompt
* Many convenient aliases, including `ll`
* Ability to parse your git branch and append it to your PS1 prompt
* A variety of aliases including 'stop' which kill -2

IRB Resource Configuration - .irbrc
-----------------------------------

* Automatically require `pry` and `pry-debugger` if in your gemset so you don't need to pollute your app's Gemfile
* Colorize ruby prompt with wirble if in gemset

Ack Resource Configuration - .ackrc
-----------------------------------

* Adds coffeescript extension as a type
* ignores ruby mine project directories

Git Config - .gitconfig
-----------------------

* Added a variety of git aliases
* Assigned mergetool to diffmerge

Input Resource Configuration - .inputrc
---------------------------------------

* Allow up and down arrow to search history based on what's already typed. rvm <up-arrow> only shows history entries starting with rvm.

IRB Resource Configuration - .irbrc
-----------------------------------

* Add wirble, some printing functionality, and some other coloring support to irb
