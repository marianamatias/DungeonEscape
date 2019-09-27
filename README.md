# DungeonEscape
GameBoy Advance game that I developed in C for a Georgia Tech course called Media Device Architecture (CS2261).

To run it, use a GameBoy emulator such as Boycott Advance.

# Instructions

The goal of my game is to help your little character escape the underground dungeon!
You have 3 precious lives to avoid all enemies and obstacles before you're trapped FOREVER.
To move on to the next level, you must collect the key and unlock the secret ladder.
The catch is: you can't control your character's horizontal movement... good luck timing those jumps.

* Up Arrow: jump
* Start Button: Advance to next screen
* Cheat: collect the magic diamond to be able to change direction using the left/right arrow keys

# Project Requirements

These requirements guided the concept and development of my game:
* 2 Sprites, with at least one being an animated sprite or one animated extra large sprite
* 2 simultaneous tiled backgrounds or 1 tiled background larger than 512x512 pixels
* Main game mode in Mode0
* Win/Lose states (as applicable) but there must be at least one
* Splash screen with menu and instructions
* Ability to pause the game
* At least 2 sounds that can play at the same time, with one sound looping at some point
* Cheat to make the game easier (not just to skip to the win state)
* Bug-Free Gameplay
* Good Game Design

# Code
If you're trying to see where all the magic happens (game logic and structure), take a peek at the main.c file.