"TV Dream" by kroberts21

[rooms]
Stage Middle is a room. The description is "Stage Middle".

Stage Left is a room. It is east of Stage Middle.
	Big Oak Tree is scenery in Stage Left.
	big key is on top of Big Oak Tree.
	grabber is a thing in Stage Left.

instead of taking Big Key:
	if grabber is carried by the player:
		move key to player;
		say "Taken.";
	else:
		say "You can't quite reach the key. It's too high up."

[understand "use [something]" as using.
if]

Stage Right is a room. It is west of Stage Middle.

Backstage is a room. "safe".
The safe is scenery in Backstage. it is a closed openable container. It is locked and lockable. The description is "safe".
small key is in the safe. small key is not fixed in place.

Studio Audience is a room. It is south of Stage Middle. "2 trees in stage left, 3 trees in stage middle, and 1 tree in stage right. Peculiar.

left red

middle blue

right green"

Lot is a room.

[doors]
The red door is north of Stage Middle and south of Backstage.
The red door is a door.
The red door is locked and lockable.
big key unlocks the red door.

The black door is north of Lot and south of Studio Audience.
The black door is a door.
The black door is locked and lockable.
small key unlocks the black door.

[source: intfiction.org, Felix Larsson, posted 6/08/11]

After examining the safe:
	now the command prompt is "Passcode? >";
	continue the action.
   
After reading a command when the command prompt is "Passcode? >":
	increment the turn count;
	if the player's command matches "231": 
		now the safe is unlocked;
		say "You have unlocked the safe.";
		now the command prompt is ">";
	otherwise:
		say "The safe remains closed.";
		now the command prompt is "Would you like to try again? (Yes or No) >";
		reject the player's command.
   
After reading a command when the command prompt is "Would you like to try again? (Yes or No) >":
	if the player's command matches "yes" or the player's command matches "y": 
		now the command prompt is "Please enter the passcode now. >";
		say line break;
		say run paragraph on;
		reject the player's command;
	if the player's command matches "no" or the player's command matches "n": 
		now the command prompt is ">";
		say line break;
		say run paragraph on;
		reject the player's command;
	otherwise:
		say line break;
		say run paragraph on;
		reject the player's command.

Instead of opening black door:
	end the story finally saying "You win".