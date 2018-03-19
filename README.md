# Tas of Rival Schools

The first bricks of these tas had been retrieved from the [tas-scaffolding project](https://github.com/fullmoonissue/tas-scaffolding)

## Emulator used

[BizHawk](https://github.com/TASVideos/BizHawk), version 2.2

## Memory address

    P1 Life : 1EFA00
    P1 Combo Level : 1EFC18

## Tas of Lesson Mode

This is a 100% tas of Hayato's lessons.

You must have the letter S to all lessons to reach the maximum percentage.

### Major difficulty :

Throw escapes !

You can get into a weird case.

On a certain frame, you are too early, so you grab him instead of escaping but if you grab him one frame after, it's Hayato who is grabbing you.

So, this is impossible at this point to manage this exercice.

That's why I send a heavy kick to "orientate" his pattern on an other frame route.

### Publication

https://www.youtube.com/watch?v=e1RWETgbzBQ

## Tas of Home Run Mode

I saw a 141 meters done [here](https://www.youtube.com/watch?v=pnikyC--gL4&t=5m), worth an other try to optimize.

### Publication

https://www.youtube.com/watch?v=Fa3WBI1GD6s

## Tas of Service Mode

```
--- Caption and points ---
0 : Raizo (- 200 pts)
1 : Roberto (+ 100 pts)
2 : Sakura (+ 300 pts)
3 : Hinata (+ 500 pts)
4 : Shoma (+ 1000 pts)
```
```
--- Location of the heads ---
2 - 4 2 1 - - 1 - - 1 2 4 - 2
1 - - 3 - - - 4 - - - 3 - - 1
- - - - - - - - - - - - - - -
4 - - - - - - 0 - - - - - - 4
- 0 4 - 0 - 3 1 3 - 0 - 4 - 0
- - - - - - - 4 - - - - - - -
- - - 2 3 - - - - - 3 2 - - -
- - - - - - - - - - - - - - -
- - 0 - 1 - - - - - 1 - 0 - -
- - 4 - 2 - - 4 - - 2 - 4 - -
              N
```

Even if Raizo decrements points, it will start a combo which will give more points than not touching him.

When a combo is done, I smash Shoma in last because he give more points.

Score : 42300

### Publication

* https://www.youtube.com/watch?v=wj8WxkoHJx8
* obsolete : https://www.youtube.com/watch?v=z3zAUFpW_Pw

## Tas of Shoot Out Mode

Nothing special, just no move as the goal

### Publication

https://www.youtube.com/watch?v=zUQm26ttaK4

## Tas of Target Mode

```
-- Memory Address
1C681C : Current Score
1EFA70 : Down <--> Up
1EFA6C : Left <--> Right
```
```
-- Panel's Location
500 300 200 300 500
400 300 200 300 400
300 200 100 200 300
```

Curving ball and frame knocking give more points.

Score : 8600

### Publication

* https://www.youtube.com/watch?v=tLSHkkx0yy4
* obsolete : https://www.youtube.com/watch?v=MzZUei7VKw4

## Watch from BizHawk

1. Rename the config.lua.dist to config.lua and start_overlay.lua.dist to start_overlay.lua.
2. Inside config.lua, put one the following value to `currentTas` to choose which tas you want to see :

    * home-run-mode : Play in the Home Run Contest (with Shoma)
    * lesson-mode : Hayato will teach you the skills you need to know to become a master
    * service-mode : Practice serving volleyballs (with Natsu)
    * shoot-out-mode : Play in the penalty kick shoot-out (with Roberto)
    * target-mode : Knock out the score panels set up at the goal (with Roberto)

3. In BizHawk, go to Tools -> Lua Console and open the start.lua file.

## Bk2 archive

_Will be done later..._