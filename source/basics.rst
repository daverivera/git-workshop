.. _basics:

The basics: A practical guide
*****************************

Initialize a reposotiry
=======================


Init
----

Creates an empty Git repository or reinitialize an existing one. This command creates an empty Git repository - basically a .git directory with subdirectories for objects, refs/heads, refs/tags, and template files.

Running git init in an existing repository is safe. It will not overwrite things that are already there.

.. code-block:: bash

  $ git init

Clone
-----

Clones a repository into a new directory with the same name as the repository beign cloned.

.. code-block:: bash

  $ git clone <REPO URL>

Cloning a repository into a directory with a custom name.

.. code-block:: bash

  $ git clone <REPO URL> <DIRECTORY NAME>

Configuration
=============

Get and set repository or global options

.. code-block:: bash

    $ git config --list

Now that you have Git on your system, you’ll want to do a few things to customize your Git environment. You should have to do these things only once on any given computer; they’ll stick around between upgrades. You can also change them at any time by running through the commands again.

Adding a remote
---------------

Manage the set of repositories ("remotes") whose branches you track.

.. code-block:: bash

  $ git remote add origin <Repository URL>
  $ git remote add origin https://github.com/<USER>/<REPO NAME>.git

Global configuration (Name & Email)
-----------------------------------

The first thing you should do when you install Git is to set your user name and email address. This is important because every Git commit uses this information, and it’s immutably baked into the commits you start creating:

.. code-block:: bash

  $ git config --global user.name "Full Name"
  $ git config --global user.email email@email.com

Checking a specific value:

.. code-block:: bash

  $ git config user.name
  Full Name

Working directory, Index & HEAD
===============================

Modifying files
---------------

Every time a file is modified it is marked as changed, and added to the **working directory** (automatically).

.. code-block:: bash

  $ touch new_file.txt
  $ git status
  Initial commit

  Untracked files:
    (use "git add <file>..." to include in what will be committed)

      new_file.txt

    nothing added to commit but untracked files present (use "git add" to track)

Accepting changes (Into the staging area)
-----------------------------------------

This command updates the **index** using the current content found in the **working tree**, to prepare the content **staged** for the next commit.

.. code-block:: bash

  $ git add new_file.txt
  $ git status
  On branch master

  Initial commit

  Changes to be committed:
    (use "git rm --cached <file>..." to unstage)

      new file:   new_file.txt

The file is now in **index** (staging area). Let's make another change.

.. code-block:: bash

  $ echo "This is a test" > new_file.txt
  $ git status
  On branch master

  Initial commit

  Changes to be committed:
    (use "git rm --cached <file>..." to unstage)

      new file:   new_file.txt

  Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git checkout -- <file>..." to discard changes in working directory)

       modified:   new_file.txt

Untracked files
^^^^^^^^^^^^^^^

.. code-block:: bash

  On branch master
  Your branch is up-to-date with 'origin/master'.
  Changes to be committed:
    (use "git reset HEAD <file>..." to unstage)

      new file:   source/basics.rst

  Changes not staged for commit:
    (use "git add/rm <file>..." to update what will be committed)
    (use "git checkout -- <file>..." to discard changes in working directory)

      deleted:    source/easy.rst
      deleted:    source/hard.rst
      modified:   source/index.rst
      deleted:    source/noteasy.rst

  Untracked files:
    (use "git add <file>..." to include in what will be committed)

      .DS_Store


Visualizing differences (Working tree vs Staging area)
------------------------------------------------------

We have two changes on the same file. One staged and the other on the working three.

Let's see their differences.

On the Index (Staging area)
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

  $ git diff --cached
  diff --git a/new_file.txt b/new_file.txt
  new file mode 100644
  index 0000000..e69de29

On the Working tree
^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

  $ git diff
  diff --git a/new_file.txt b/new_file.txt
  index e69de29..0527e6b 100644
  --- a/new_file.txt
  +++ b/new_file.txt
  @@ -0,0 +1 @@
  +This is a test

Applying changes (Commiting)
----------------------------

Stores the current contents of the **index** in a new commit along with a log message from the user describing the changes.

.. code-block:: bash

  $ git commit -m "Added new file"
  $ git status
  On branch master
  Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git checkout -- <file>..." to discard changes in working directory)

      modified:   new_file.txt

    no changes added to commit (use "git add" and/or "git commit -a")

History (Log)
=============

Shows the commit logs.

.. code-block:: bash

  $ git log
   commit 911d366873ec0df5ffed8531176e94c0ceadf7f8
   Author: Dave Rivera <daverivera90@gmail.com>
   Date:   Wed Nov 25 10:20:39 2015 -0500

       Added new file

A more complex, but useful
--------------------------

.. code-block:: bash

   $ git log --decorate --oneline --all
   911d366 (HEAD -> master) Added new file

Back to the past (Resetting)
----------------------------

The way to reset a file may vary according to the state of the file.

Reset working directory
-----------------------

``checkout`` switch branches or restores working tree files.

.. code-block:: bash

  $ git checkout -- new_file.txt

Removing from the stage area
----------------------------

``reset`` resets current HEAD to the specified state

.. code-block:: bash

  $ git status
  On branch master
  Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   new_file.txt

    no changes added to commit (use "git add" and/or "git commit -a")

  $ git add new_file.txt
  $ git status

  On branch master
  Changes to be committed:
    (use "git reset HEAD <file>..." to unstage)

      modified:   new_file.txt

  $ git reset new_file.txt
  Unstaged changes after reset:
  M new_file.txt
  $ git status
  On branch master
  Changes not staged for commit:
    (use "git add <file>..." to update what will be committed)
    (use "git checkout -- <file>..." to discard changes in working directory)

      modified:   new_file.txt

    no changes added to commit (use "git add" and/or "git commit -a")

Delete local commit
-------------------

.. code-block:: bash

  $ git reset --hard origin/master

.. code-block:: bash

  $ git reset --hard HEAD~1

Hard, Soft & Mixed
==================

Hard ``--hard``
  Resets the index and working tree. Any changes to tracked files in the working tree since <commit> are discarded.

Soft ``--soft``
  Does not touch the index file or the working tree at all (but resets the head to <commit>, just like all modes do). This leaves all your changed files "Changes to be committed", as git status would put it.

Mixed ``--mixed | empty``
  Resets the index but not the working tree (i.e., the changed files are preserved but not marked for commit) and reports what has not been updated. This is the default action.
