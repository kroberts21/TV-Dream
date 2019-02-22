"TV Dream" by kroberts21

[rooms]
Stage Middle is a room. The description is "Stage Middle".

Stage Left is a room. It is east of Stage Middle.
	Big Oak Tree is scenery in Stage Left.
	big key is on top of Big Oak Tree.
	Grabber is a thing in Stage Left.

instead of taking Big Key:
	if Grabber is carried by the player:
		move key to player;
		say "Taken.";
	else:
		say "You can't quite reach the key. It's too high up."

Stage Right is a room. It is west of Stage Middle.

Backstage is a room. "safe".

Studio Audience is a room. It is south of Stage Middle. "2 trees in stage left, 3 trees in stage middle, and 1 tree in stage right. Peculiar.

left red

middle blue

right green"


[doors]
The red door is north of Stage Middle and south of Backstage.
The red door is a door.
The red door is locked and lockable.
big key unlocks the red door.





[items]
The safe is scenery in Backstage. it is a closed openable container. It is locked. The description is "safe".
small key is in the safe. small key is not fixed in place.

Casting 231 is an action applying to nothing.
Understand "231" or "say 231" or "type 231" or "input 231" as casting 231.
Instead of casting 231:
	say "You unlock the safe, revealing a small key.";
	Now the safe is unlocked;
	move small key to player.