# NSMBW GAKENOKO fix

EN_GAKE_NOKO (Cliff Koopa) is an unused enemy in New Super Mario Bros. Wii that still has some code leftover in the game. It's meant to hang from cliff edges and shimmy across them.

Unfortunately, although most of its code found its way into the final game's binaries, its constructor was replaced by one that simply deletes the actor as soon as it's spawned. This is a [Kamek](https://github.com/Treeki/Kamek) project written by [Ninji](https://github.com/Treeki/), [Skawo](https://github.com/skawo), [RoadrunnerWMC](https://github.com/RoadrunnerWMC), and me that replaces this ctor with one that allows the enemy to spawn correctly.

You can see a video of it in action [right here](https://www.youtube.com/watch?v=8M9K124EkuE).

### Sprite Settings:

NSMBW actors read their settings in the constructor... which is the function Nintendo deleted from EN_GAKE_NOKO, so we don't know exactly what settings it had.

We know there was definitely at least a "color" setting, since the actor supports both styles of movement. An "initial direction" setting seems likely, too, since it's useful and very easy to implement. But there's no way to know what nybbles they mapped to, or if there might've been more settings. (There are a few extra states we don't understand the purpose of, so it's possible more features were partially implemented.)

The nybble numbers below are specifically for the rewritten constructor, and don't reflect anything from the original game itself:

**Nybble 10:** Sets the enemy to green (0) or red (1). Green ones will continue past the ends of the rock and fall off, and red ones turn around and go the other way instead.

**Nybble 11:** Sets the initial direction to left (0) or right (1).

**Nybble 12:** This option allows you to switch between how Nintendo left it (0) and a fixed version for actual usage (1). If set to 0, the enemy is too low and small Mario will kill it by touching it from the side, so this setting is provided as an option for custom levels that use it in any serious capacity.
