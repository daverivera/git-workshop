.. _unnecessary:

The [Un]necessary stuff
***********************

Renaming branches
=================

Local
-----

Just like creating a new branch, but adding the ``-m`` (move) flag.

.. code-block:: bash

  $ git branch -m <Old-lame-name> <New-hot-name>

Rename current branch
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

  $ git branch -m <New-hot-name>

Remote
------

There's no easy way to do it...

.. code-block:: bash

  # Remove the branch
  $ git push origin :<Old-lame-name>

  # Push the new branch
  $ git push origin <New-hot-name>

Stash
========

Often, when you’ve been working on part of your project, things are in a messy state and you want to switch branches for a bit to work on something else. The problem is, you don’t want to do a commit of half-done work just so you can get back to this point later. The answer to this issue is the ``git stash`` command.

Stash
-----

Stash the changes in a dirty working directory away

.. code-block:: bash

  $ git stash

Popping
-------

Remove a single stashed state from the stash list and apply it on top of the current working tree state.

.. code-block:: bash

  $ git stash pop

Apply
-----

Like pop, but do not remove the state from the stash list.

.. code-block:: bash

  $ git stash apply

Dropping
--------

Remove a single stashed state from the stash list.

.. code-block:: bash

  $ git stash drop

Listing
-------

List the stashes that you currently have.

.. code-block:: bash

  $ git stash list

Clear
-----

Remove all the stashed states.

.. code-block:: bash

  $ git stash clear

Patching
========

Interactively choose hunks of patch between the index and the work tree and add them to the index. This gives the user a chance to review the difference before adding modified contents to the index.

.. code-block:: bash

  $ git add -p <Filename>
  $ git add --patch <Filename>

Rebase
======

Rebasing really is just moving a branch from one commit to another. But internally, Git accomplishes this by creating new commits and applying them to the specified base—it’s literally rewriting your project history.

``-i``
  Make a list of the commits which are about to be rebased. Let the user edit that list before rebasing. This mode can also be used to split commits (see SPLITTING COMMITS below).

.. code-block:: bash

  $ git rebase -i


Cherrypick[ing]
===============

Apply the changes introduced by some existing commits.

.. code-block:: bash

  $ git cherry-pick <Commit-ID>

