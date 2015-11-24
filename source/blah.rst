.. _blah:

The blah, blah, blah part
*************************

What's Git?
===========

Git
  A mild pejorative with origins in British English for an unpleasant, silly, incompetent, stupid, annoying, senile, elderly or childish person.

 `Git history +10 years <https://www.atlassian.com/git/articles/10-years-of-git/>`_

Git vs SVN
==========

Snapshots, Not Differences
--------------------------

.. image:: _static/svn-git.svg

Distributed vs Centrilized
---------------------------

.. image:: _static/centralized.svg
.. image:: _static/distributed.svg

The 3 States of a File
======================

.. image:: _static/states.png

Working tree (Modified)
-----------------------

Indicates what files have been changed.

Index (Staged)
--------------

Marks changed files/lines to be committed (Saved into database)

HEAD (Commited)
---------------
Safely stored and indexed within the local database.

.. image:: _static/areas.png

Tree structure
==============

``.git`` content

.. code-block:: python
  :emphasize-lines: 1,3,6-9

  HEAD
  branches/
  config
  description
  hooks/
  index
  info/
  objects/
  refs/

**Basic files**

* ``config`` file contains your project-specific configuration options.
* ``info`` directory keeps a global exclude file for ignored patterns that you don’t want to track in a .gitignore file.

**Important files**

* ``HEAD`` file points to the branch you currently have checked out.
* ``index`` file is where Git stores your staging area information.
* ``objects`` directory stores all the content for your database.
* ``refs`` directory stores pointers into commit objects in that data (branches).

+ `More on git internals <http://git-scm.com/book/en/v1/Git-Internals-Plumbing-and-Porcelain>`_
+ `Git from the bits up (Youtube) <https://www.youtube.com/watch?v=MYP56QJpDr4>`_
