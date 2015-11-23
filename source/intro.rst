.. _intro:

Introducción
************

Temas a tratar
==============

+ The Easy Parts
  + Git vs SVN
    + Snapshots, Not Differences
    + Distribuido vs Centralizado
  + States (working -> index -> head)
  + Inicializar un repositorio
    + Init
    + Clone
  + Tree structure
  + Config
    + Origin
    + Global (Name & Email)
  + SSH key vs Password
  + Changing code
  + add
    + add -p
    + add . | add -a
  + commit
  + reset
    + HEAD
    + --hard
+ The Not So Easy Parts
  +

Aside from the practical distinctions between SVN and Git, their underlying implementation also follow entirely divergent design philosophies. Whereas SVN tracks differences of a file, Git’s version control model is based on snapshots. For example, an SVN commit consists of a diff compared to the original file added to the repository. Git, on the other hand, records the entire contents of each file in every commit.
