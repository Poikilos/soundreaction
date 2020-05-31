# soundreaction
Add another way of communicating
...or another way of dank memes.


## License
- Code: See license.txt--copyright (c) "Glory!".
- Sound files: CC0 by Glory
- License changes notice: The original license said that I can do
  whatever I want, and I wanted to change to a license that protects the
  authors and users.


## Admin Guide
This mod is server friendly!

To add sounds, have them converted to the Ogg Vorbis format and place
them on the sounds folder, following this convention:
`name0.ogg`, `name1.ogg`, `name2.ogg` . . . `nameN.ogg`.

A sound without variations is also possible, by just making one
`name0.ogg` file.

To make the souds working, init.lua must be modified. Under the
srlocal.sounds matrix, add and/or modify its lines following this
convention:
`{"command","filename", no of variants, chat message, help description},`

The chat message represents in words the voice command. For instance, a
"thanks" command will be represented by "[Voice] Sam: Thanks!". If the
sound file is proven unsuitable for subtitles, false can be applied.

The number of variations represents how many files you have
minus one. For instance:
`gr0.ogg`, `gr1.ogg`, `gr2.ogg` ... `gr13.ogg`

```
{"say_gr", "gr", 13, false, "Git rekt m90. (Voice)"},
```

## History
This is a preservation and continuation of Glory!'s soundreaction mod
for Minetest that was formerly only available as a forum attachment at
[[Mod] Sound Reactions 1.0
[soundreaction]](https://forum.minetest.org/viewtopic.php?t=13185).
