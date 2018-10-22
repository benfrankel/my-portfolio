+++
type = "solution"
title = "Occupy the Board"
description = "Occupy an 8x8 board with your choice of tetromino."
date = "2015-09-13"
showtime = false
showtaxonomy = false
+++

It's possible for the **T**, **S**, **Z**, and **O** tetrominoes and impossible for the **I**, **J**, and **L** tetrominoes.

### Possible

<figure>
<img src="/img/puzzle-assets/occupy-t.png" width="256px"></img>
<img src="/img/puzzle-assets/occupy-s.png" width="256px"></img>
<img src="/img/puzzle-assets/occupy-z.png" width="256px"></img>
<img src="/img/puzzle-assets/occupy-o.png" width="256px"></img>
</figure>

### Impossible

#### I Tetromino

Suppose there is a packing of **I** tetrominoes with the desired properties. The board can't be completely empty (otherwise there would be space to fit an **I** tetromino) so there must be at least one **I** tetromino on the board. It's impossible for both of its long edges to sit along borders of the grid, so one of its long edges is adjacent to 4 squares. Because no two tetrominoes may be adjacent, those 4 squares must be empty:

<img src="/img/puzzle-assets/occupy-i-deduction.png" width="256px"></img>

But that leaves space for another **I** tetromino, which is a contradiction.

#### J/L Tetrominoes

Marconius solved this case [here](https://puzzling.stackexchange.com/a/22151). I don't have a more elegant solution.
