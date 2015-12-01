.. _noteasy:

The advanced stuff
******************

Don’t Reset Public History
==========================

.. image:: _static/undoing-changes.svg

As soon as you add new commits after the reset, Git will think that your local history has diverged from origin/master, and the merge commit required to synchronize your repositories is likely to confuse and frustrate your team.

Collaboration
=============

.. image:: _static/collaboration.svg

Github repository
-----------------

.. image:: _static/collabocats.jpg

.. code-block:: bash

  $ git remote add origin https://github.com/<USER>/workshop.git

Fetching
--------

``fetch`` Downloads the objects and refs from another repository.

.. code-block:: bash

  $ git fetch

Pulling
-------

``pull`` Fetches from origin and integrates with another repository or a local branch

.. code-block:: bash

  $ git pull origin master

Pushing
-------

.. code-block:: bash

  $ git push origin master

Configuring push
----------------

upstream - push the current branch to its upstream branch...
simple - like upstream, but refuses to push if the upstream branch’s name is different from the local one...
current - push the current branch to a branch of the same name.

.. code-block:: bash

  $ git config --global push.default simple
  $ git push

Branching
=========

Create branches
---------------

.. code-block:: bash

  $ git branch <Branch Name>

Move among branches
-------------------

.. code-block:: bash

  $ git checkout <Branch Name>

Delete branches
---------------

.. code-block:: bash

  $ git branch -d <Branch Name>

Pushing branches
----------------

.. code-block:: bash

  $ git push origin <Branch Name>

Delete remote branches
----------------------

.. code-block:: bash

  $ git push origin :<Branch Name>

Merging branches
----------------

.. image:: _static/merge.png

Merging branches by moving
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

  $ git merge <Branch Name>

Merging branches with history
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

  $ git merge --no-ff <Branch Name>


Advance Branching
-----------------

.. code-block:: bash

  $ git checkout -b <New Branch Name> <Parent branch>


Example
-------

.. code-block:: bash

  # Create a local branch
  $ git branch testing_branch

  # Move to the newly created branch
  $ git checkout testing_branch

  # Let's add some changes
  $ echo "This is a test" > newFile.txt

  # To index
  $ git status
  $ git add .

  # New HEAD
  $ git commit -m "This was a test"

  # Pushing the branch to origin
  $ git push origin testing_branch

  # Merging with master
  $ git checkout master
  $ git merge --no-ff testing_branch

  # Reviewing the Changes
  $ git log --oneline

