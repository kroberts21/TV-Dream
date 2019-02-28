"TV Dream" by kroberts21

[rooms]
Use no scoring.

When play begins: say "The lights mounted on the ceiling nearly blind you as you wake up. You slowly stand up, and the sound of your foot stepping on a wooden floor startles you. You quickly jump up, and find yourself standing front and center of a stage. Coming to your senses, you realize that you are the only person in the room. No people sitting in the studio audience seats, no people operating lights or cameras, no people running around backstage, just you.

A visceral feeling hits your gut. You have to escape.".

The description of the player is "You're wearing long black pants that go down to your ankles, shiny black shoes, and a purple t-shirt. You feel around your head, and notice you have short hair. Probably black.".

[rooms]
Stage Middle is a room. "A big wooden cutout of a yellow house with a red roof and a red door stands front and center of the stage, right behind where you were laying down. Around the house stands three taller wooden cutouts of trees.".

Stage Left is a room. It is east of Stage Middle. "Here there is a large, long, round cutout resembling some sort of lake. One giant fake oak tree stands closer to the house, with a large key dangling from its branches.

One of those long plastic grabber things is on the floor at the base of the tree. You can't seem to figure out why it's there."
	Big Oak Tree is scenery in Stage Left.
	big key is on top of Big Oak Tree.
	grabber is a thing in Stage Left.

instead of taking Big Key:
	if grabber is carried by the player:
		move key to player;
		say "Taken.";
	else:
		say "You can't quite reach the key. It's too high up."

Instead of taking grabber:
	say "Now you can get the key.";
	move grabber to player.

Stage Right is a room. It is west of Stage Middle. "This part of the stage is pretty empty compared to the other two sections. Aside from the sky blue backdrop, there are two trees and a tall flagpole with a white flag."

Backstage is a room. "It's kind of dark. From the lights on the top of the stage, you can make out an empty lightbulb socket embedded in the ceiling.".
The safe is scenery in Backstage. The safe is a closed openable container. The safe is locked and lockable. The description is "safe".
	small key is in the safe. small key is not fixed in place.
socket is scenery in Backstage. It is an open container.

Studio Audience is a room. It is south of Stage Middle. "Right in front of the stage, you see two cameras and two lights fixed on low stands.

Immediately, you notice something peculiar. You turn towards the stage, then towards the chairs. Facing the stage, all the chairs on the left are red, in the middle blue, and on the right green."

Lights are undescribed scenery in Studio Audience. It is an open container. The description is "The lights they use on the show. They are currently off.".
lightbulb is in Lights. lightbulb is a device. It is fixed in place. It is unlit. It is switched off.

Understand "unscrew [something]" as turning.
Unscrewing something is an action applying to one thing.

Instead of turning lightbulb:
	say "You unscrew the lightbulb.";
	now lightbulb is not fixed in place.

Instead of taking lightbulb:
	if lightbulb is fixed in place:
		say "You try pulling it out, but it's stuck. However, you try again, and you feel it wiggle around a little bit.";
	otherwise:
		say "Taken.";
		move lightbulb to player.

Understand "put [something] in [something]" as inserting it into.

Instead of inserting lightbulb into socket:
	say "You screw in the lightbulb.";
	move lightbulb to socket.

Understand "turn on [something]" as switching it on.
Understand "light" as lightbulb.
switching it on is an action applying to one thing.

After switching on the lightbulb:
	say "You turn on the light. Now you can see a safe.";
Visibility rule when in darkness:
	if examining safe:
		say "".
	there is sufficient light.
[Instead of examining safe:
	say "You can't see any such thing.".
	there is insufficient light.]
	

[the goal]
Lot is a room.

[doors]
The red door is north of Stage Middle and south of Backstage.
The red door is scenery in Stage Middle.
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
	
Instead of unlocking safe with key:
	say "It doesn't look like the safe is unlockable with a key.".
   
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
	end the story finally saying "You Win".