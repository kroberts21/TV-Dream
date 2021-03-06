"TV Dream" by kroberts21

[rooms]
Use no scoring.

When play begins: say "The lights mounted on the ceiling nearly blind you as you wake up. You slowly stand up, and the sound of your foot stepping on a wooden floor startles you. You quickly jump up, and find yourself standing front and center of a stage. Coming to your senses, you realize that you are the only person in the room. No people sitting in the studio audience seats, no people operating lights or cameras, no people running around backstage, just you.

A visceral feeling hits your gut. You have to escape.";
now left hand status line is "Exits: [exit list]";
now right hand status line is "[location]".
To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way] ".

The description of the player is "You're wearing long black pants that go down to your ankles, shiny black shoes, and a purple t-shirt. You feel around your head, and notice you have short hair. Probably black.".

[rooms]
Stage Middle is a room. "A big wooden cutout of a yellow house with a red roof and a red door stands front and center of the stage, right behind where you were laying down. Around the house stands three taller wooden cutouts of trees.".
roof is scenery in Stage Middle. The description is "Brick red, with shingles painted onto it. Whoever was in charge of the artwork did a great job.".
house is scenery in Stage Middle. The description is "A sort of faded yellow-ish color.".
cutout is undescribed scenery in Stage Middle.
trees are undescribed scenery in Stage Middle. The description is "Very flat and very basic; long brown rectangles act as the trunks, and green floofy shapes act as the leaves."
Stage Left is a room. It is east of Stage Middle. "Here there is a large, long, round cutout resembling some sort of lake. One giant fake oak tree stands closer to the house, with a large key dangling from its branches.

One of those long plastic grabber things is on the floor at the base of the tree. You can't seem to figure out why it's there."
	Big Oak Tree is scenery in Stage Left. The description is "Looks hyperrealistic, but when you reach out to touch it, you feel plastic. You look up, and it seems about nine to ten feet tall.".
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
Flagpole is a supporter in Stage Right. The description is "Smooth, polished, light gray steel. Like a normal flagpole but scaled down.".
Flag is on Flagpole. The description is "A plain, white, rectangular piece of canvas.".
xBackdrop is undescribed scenery in Stage Right. The description is "Sky blue wallpaper. No clouds or anything.".
Understand "backdrop" as xBackdrop.

Backstage is a room. "[if lightbulb is switched on]A single lightbulb gives off a warm yellow-orange glow, making it just bright enough to make out some details in the room.[otherwise]It's kind of dark. From the lights on the top of the stage, you can make out an empty lightbulb socket embedded in the ceiling.".
The safe is scenery in Backstage. The safe is a closed openable container. The safe is locked and lockable. The description is "It has a number pad and a seven-segment display, almost like a microwave, but super secure. The display is divided into three segments, red, blue, and green.".
	small key is in the safe. small key is not fixed in place.
socket is scenery in Backstage. It is an open container.

Studio Audience is a room. It is south of Stage Middle. "Right in front of the stage, you see two lights fixed on low stands. Oddly enough, there are no cameras. The lights look strange as well; they're loose.

Immediately, you notice another peculiar thing. You turn towards the stage, then towards the chairs. Facing the stage, all the chairs on the left are red, in the middle blue, and on the right green.

There is also an ominous black door all the way in the back."
Seats are undescribed scenery in Studio Audience.
Lights are undescribed scenery in Studio Audience. It is an open container. The description is "The lights they use on the show. They are currently off.".
lightbulb is in Lights. lightbulb is a device. It is fixed in place. It is unlit. It is switched off.

Understand "unscrew [something]" and "screw [something]" as turning.
Unscrewing something is an action applying to one thing.
Screwing something is an action applying to one thing.
Instead of turning lightbulb:
	if player's command matches "unscrew lightbulb":
		say "You unscrew the lightbulb.";
		now lightbulb is not fixed in place;
	if player's command matches "screw lightbulb":
		say "You screw in the lightbulb.";
		now lightbulb is fixed in place.

Instead of taking lightbulb:
	if lightbulb is fixed in place:
		say "You try pulling it out, but it's stuck. However, you try again, and you feel it wiggle around a little bit.";
	otherwise:
		say "Taken.";
		move lightbulb to player.

Understand "put [something] in [something]" as inserting it into.

Instead of inserting lightbulb into socket:
	say "You screw the lightbulb into the socket.";
	move lightbulb to socket.


Understand "turn on [something]" as switching it on.
Understand "light" as lightbulb.
switching it on is an action applying to one thing.
Instead of switching on the lightbulb:
	if player is in Studio Audience:
		say "There doesn't seem to be a switch on these lights. Or an electrical outlet.";
	if player is in Backstage:
		continue the action;
After switching on the lightbulb:
	say "You turn on the light. Now you can see a safe embedded in the center of the back wall.";
Visibility rule when in darkness:
	if examining safe:
		say "It has a number pad and a three-digit seven-segment display, almost like a microwave, but super secure. The display is divided into three segments, red, blue, and green. On the wall to the right of the safe, there is a sticker that depicts a tree.".
	there is sufficient light.
[Instead of examining safe:
	say "You can't see any such thing.".
	there is insufficient light.]
	

[the goal]
Lot is a room.

[doors]
The red door is north of Stage Middle and south of Backstage. The description is "Solid bright red. It feels more alive than the rest of the set.".
The red door is scenery in Stage Middle.
The red door is a door.
The red door is locked and lockable.
big key unlocks the red door.

The black door is north of Lot and south of Studio Audience. The description is "Kind of a dark gray-ish color. Above the door is a sign that says in big bold red letters, 'EXIT'.".
The black door is scenery in Studio Audience.
The black door is a door.
The black door is closed.
The black door is locked and lockable.
small key unlocks the black door.

[PASSCODE: source: intfiction.org, Felix Larsson, posted 6/08/11]

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
	if black door is locked:
		say "The door is locked. You are trapped.";
		stop the action;
	Otherwise:
		continue the action.
		
[miscellaneous "understand"s]
Understand "light bulb" as lightbulb.
Understand "chair" as seats.
Instead of taking seats:
	say "They're bolted into the floor".
Instead of examining cutout:
	say "There are a lot of cutouts here. It would take a lot of time to examine all of them.".
Instead of entering house:
	if red door is locked:
		say "The door seems to be locked.";
	Otherwise:
		move player to Backstage.
Understand "x room" as looking.


An every turn rule:
	if player is in Lot:
		end the story finally saying "You Win".