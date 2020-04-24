# Heat-Conduction
Heat Conduction  Suppose you have a rectangular tile made of a certain material. The four sides of the tile are maintained at certain temperatures, which can vary along the length or width of the block. You are planning to use this tile for an engineering application that requires you to know the temperature distribution in the interior of the tile. The basic scientific principle governing the solution is that heat flows from hotter regions to colder regions. We are going to attempt a simple way of solving this problem. Assume that we pick 24 regularly spaced points over the tile in a 4-by-6 grid and store the temperature of each point in an array element. Thus, we will work with a 4-by-6 array. Note that the boundaries of this array are the physical boundaries of the tile, where the temperature will always be specified. The differential equation governing heat flow works in such a way that approximating its derivatives numerically is equivalent to calculating the temperature of each interior point by taking the average of its 4 nearest neighbours (up, down, left, right). This will enable us to fill in the missing entries for the array