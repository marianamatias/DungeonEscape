/*
DUNGEON ESCAPE - GAME INFO

WHAT IS FINISHED?
- Level 1
- Key and ladder unlocking
- Win and lose conditions that make sense with the game
- Obstacles/objects that appear to stay stationary (actually move with the background)
- Sound effects & Music
- 2 Simultaneous backgrounds
- Basic artwork for Backgrounds
- Gravity
- Level 2
- Merge levels and updated state machine
- Display lives
- Added cheat with sprite!

WHAT NEEDS TO BE ADDED?
- Better artwork ?

BUGS?
- When entering the pause screen at a certain spot, it freezes the player...

HOW TO PLAY?
- Press up to jump.
- Avoid spikes or other 'deadly' objects
- Reach the key to reveal the ladder
- Once the ladder appears, try to jump onto it to win
- Get the star/diamond to activate the cheat, which will let you change direction

Music from: https://www.bensound.com
*/

#include "myLib.h"
#include "game.h"
#include "spritesheet.h"

//Backgrounds BG1
#include "level1.h"
#include "level2.h"
#include "level1Screen.h"
#include "level2Screen.h"
#include "menu.h"
#include "instructions.h"
#include "pause.h"
#include "win.h"
#include "lose.h"

//Backgrounds BG2
#include "brickWall.h"

//Sounds
#include "sound.h"
#include "gameSong.h"
#include "menuSong.h"

// Prototypes
void initialize();

//State Prototypes
void goToMenu();
void goToInstructions();
void goToLevel1Screen();
void goToLevel1();
void goToLevel2Screen();
void goToLevel2();
void goToPause();
void goToWin();
void goToLose();


void menu();
void instructions();
void level2Screen();
void level2();
void pause();
void win();
void lose();

// States
enum {MENU, INSTRUCTIONS, LEVEL1SCREEN, LEVEL1, LEVEL2SCREEN, LEVEL2, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

//vars
int winLevel1 = 0;
int winGame = 0;
int inLevel1 = 0;
int inLevel2 = 0;

SOUND soundA;
SOUND soundB;

int main() {

    initialize();

    while(1) {
        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch(state) {
            case MENU:
                menu();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case LEVEL1SCREEN:
                level1Screen();
                break;
            case LEVEL1:
                level1();
                break;
            case LEVEL2SCREEN:
                level2Screen();
                break;
            case LEVEL2:
                level2();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }

    }
}

// Sets up GBA
void initialize() {
    //Setup Sound
    setupSounds();
    setupInterrupts();

    REG_DISPCTL = MODE0;

    // Set up the first state
    goToMenu();

    // Set up the sprites
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen/2);
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);
    hideSprites();



    // Set up the display
    REG_DISPCTL = MODE0 | BG0_ENABLE;
}

/////////////////////////////////////////////////////////////////////////////////
void goToMenu() {
    stopSound();
    playSoundA(menuSong, MENUSONGLEN, MENUSONGFREQ, 1);

    //Set up the Menu Background
    DMANow(3, menuPal, PALETTE, menuPalLen);
    DMANow(3, menuTiles, &CHARBLOCK[0],  menuTilesLen / 2);
    DMANow(3, menuMap, &SCREENBLOCK[26], menuMapLen / 2);
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(26) | BG_SIZE_SMALL;

    //setup the Display
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = MENU;
}

void goToInstructions() {
    // Set up the instructions background
    DMANow(3, instructionsPal, PALETTE, 256);
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen);
    DMANow(3, instructionsMap, &SCREENBLOCK[31], instructionsMapLen / 2);
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;


    state = INSTRUCTIONS;
}

void goToLevel1Screen() {
    // Set up the level1 background
    DMANow(3, level1ScreenPal, PALETTE, 256);
    DMANow(3, level1ScreenTiles, &CHARBLOCK[0], level1ScreenTilesLen);
    DMANow(3, level1ScreenMap, &SCREENBLOCK[31], level1ScreenMapLen / 2);
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;

    state = LEVEL1SCREEN;
}

//set up Level 1 backgrounds
void goToLevel1() {
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);


    //set up the display
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;

    // load tile palette
    DMANow(3, level2Pal, PALETTE, level2PalLen / 2);

    hOff = 0;

    //set up bg1 control register
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;

    //load level1 tiles to charbloack
    DMANow(3, level1Tiles, &CHARBLOCK[0], level1TilesLen);

    //load level 1 map to screenblock
    DMANow(3, level1Map, &SCREENBLOCK[31], level1MapLen / 2);

    //set up bg 2 control register
    REG_BG2CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);

    //load bg1 tiles to charblock
    DMANow(3, brickWallTiles, &CHARBLOCK[1], brickWallTilesLen);

    //load bg1 map to screenblock
    DMANow(3, brickWallMap, &SCREENBLOCK[29], brickWallMapLen / 2);

    state = LEVEL1;
}

void goToLevel2Screen() {
    REG_DISPCTL = MODE0 | BG0_ENABLE;

    // Set up the level2 background
    DMANow(3, level2ScreenPal, PALETTE, 256);
    DMANow(3, level2ScreenTiles, &CHARBLOCK[0], level2ScreenTilesLen);
    DMANow(3, level2ScreenMap, &SCREENBLOCK[31], level2ScreenMapLen / 2);
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;

    state = LEVEL2SCREEN;
}


// Sets up Level2 state
void goToLevel2() {
    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen/2);


    //set up the display
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG2_ENABLE | SPRITE_ENABLE;

    // load tile palette
    DMANow(3, level2Pal, PALETTE, level2PalLen / 2);

    hOff = 0;

    //set up bg1 control register
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;

    //load level2 tiles to charbloack
    DMANow(3, level2Tiles, &CHARBLOCK[0], level2TilesLen);

    //load level 1 map to screenblock
    DMANow(3, level2Map, &SCREENBLOCK[31], level2MapLen/2);

    //set up bg 2 control register
    REG_BG2CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);

    //load bg1 tiles to charblock
    DMANow(3, brickWallTiles, &CHARBLOCK[1], brickWallTilesLen);

    //load bg1 map to screenblock
    DMANow(3, brickWallMap, &SCREENBLOCK[29], brickWallMapLen / 2);

    state = LEVEL2;
}

void goToPause() {
    hideSprites();

    //Set up the Pause background
    DMANow(3, pausePal, PALETTE, pausePalLen);
    DMANow(3, pauseTiles, &CHARBLOCK[0],  pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2);
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = PAUSE;
}

void goToWin() {
    //Set up the Win background
    DMANow(3, winPal, PALETTE, winPalLen);
    DMANow(3, winTiles, &CHARBLOCK[0],  winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen / 2);
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = WIN;
}

void goToLose() {
    //Set Up the Lose Background
    DMANow(3, losePal, PALETTE, winPalLen);
    DMANow(3, loseTiles, &CHARBLOCK[0],  loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[29], loseMapLen / 2);
    REG_BG0VOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(29) | BG_SIZE_SMALL;

    REG_DISPCTL = MODE0 | BG0_ENABLE;

    state = LOSE;
}

////////////////////////////////////////////////////////////////////////////////
void menu() {
    //Goes to Level2
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToLevel1Screen();
    }

    //Goes to Instructions
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToInstructions();
    }
}

void instructions() {
    //Goes to Game
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToLevel1Screen();
    }
}

void level1Screen() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initLevel1();
        goToLevel1();
    }
}

// Runs every frame of the game state
void level1() {
    updateLevel1();
    waitForVBlank();
    drawLevel1();

    //Goes to Pause
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }

    //Goes to Win
    if (winLevel1) {
        goToLevel2Screen();
    }

    //Goes to Lose
    if (player.lives <= 0) {
        goToLose();
    }
}

void level2Screen() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initLevel2();
        goToLevel2();
    }
}

// Runs every frame of the game state
void level2() {
    updateLevel2();
    waitForVBlank();
    drawLevel2();

    //Goes to Pause
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToPause();
    }

    //Goes to Win
    if (winGame) {
        goToWin();
    }

    //Goes to Lose
    if (player.lives <= 0) {
        goToLose();
    }
}

void pause() {
    //Goes to Level1
    if (BUTTON_PRESSED(BUTTON_START) && inLevel1) {
        unpauseSound();
        goToLevel1();
    }

    //Goes to Level2
    if (BUTTON_PRESSED(BUTTON_START) && inLevel2) {
        unpauseSound();
        goToLevel2();
    }

    //Goes to Menu
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToMenu();
    }
}

void win() {
    //Goes to Menu
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToMenu();
    }
}

void lose() {
    //Goes to Menu
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToMenu();
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        initLevel1();
        goToLevel1();
    }
}