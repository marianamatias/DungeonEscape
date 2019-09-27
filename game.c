#include "myLib.h"
#include "level2game.h"
#include "collisionmap.h"
#include "collisionmap2.h"
#include "sound.h"
#include "gameSong.h"
#include "collideSound.h"
#include "accept.h"
#include "magic.h"
#include "winSound.h"
#include "loseSound.h"

// Variables
int hOff;
int vOff;
OBJ_ATTR shadowOAM[128];
ANISPRITE player;
OBJECT key;
OBJECT ladder;
OBJECT enemy;
OBJECT spikes;

OBJECT star;

//Declare Hearts
OBJECT heart1;
OBJECT heart2;
OBJECT heart3;


int cheat = 0;

//GRAV2
int grav;
int jumpval = 1000;


// player animation states for aniState
enum {PLAYRIGHT, PLAYLEFT};

enum {ENEMYRIGHT, ENEMYLEFT};

// Initialize the game
void initLevel2() {
    cheat = 0;
    inLevel1 = 0;
    inLevel2 = 1;

    //GRAVITY
    // grav = SHIFTUP(1);
    grav = 70;

	// Place screen on map
    vOff = 0;
    hOff = 0;
    winGame = 0;
    winLevel1 = 0;

    initPlayer();

    //place the obstacle objects in the game
    shadowOAM[1].attr0 = ATTR0_HIDE;

    initObject();
    drawKey();
    drawStar();
    initEnemy();
}

// Updates the game each frame
void updateLevel2() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        cheat = 1;
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        cheat = 0;
    }

	updatePlayer();
    updateObject();
    updateEnemy();

    if (player.lives == 0) {
        stopSound();
        playSoundB(loseSound, LOSESOUNDLEN, LOSESOUNDFREQ, 0);
    }
}

// Draws the game each frame
void drawLevel2() {

    drawPlayer();
    drawEnemy();
    drawLives();

    if (key.activated) {
        drawKey();
    } else {
        shadowOAM[2].attr0 = ATTR0_HIDE;
    }

    if (star.activated) {
        drawStar();
    } else {
        star.screenRow = 2;
        star.screenCol = 45;
        drawStar();
    }

    if (ladder.activated) {
        drawLadder();
    } else {
        shadowOAM[3].attr0 = ATTR0_HIDE;
        shadowOAM[4].attr0 = ATTR0_HIDE;
    }

    DMANow(3, shadowOAM, OAM, 128*4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    REG_BG2HOFF = hOff / 3;
}

// Initialize the player
void initPlayer() {
    player.width = 16;
    player.height = 16;

    //GRAVITY
    player.rdel = SHIFTUP(0);

    //GRAV1
    // player.rdel = 30;
    player.cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    //GRAVITY
    player.worldRow = SHIFTUP(SCREENHEIGHT/2-player.width/2 + vOff + 19);


    player.worldCol = SCREENWIDTH/2-player.height/2 + hOff + 100;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 2;
    player.aniState = PLAYRIGHT;

    player.screenCol = player.worldCol - hOff;
    player.screenRow = SHIFTDOWN(player.worldRow) - vOff;

    player.jumped = 0;
    player.blink = 0;
}

// Handle every-frame actions of the player
void updatePlayer() {
    //check for collisions to see if you lose a life
    checkCollision();

    if (cheat) {
        checkCheat();
    }
    //Update to include complex camera movement
    //Update based on collision map

    //GRAV2
    player.rdel += grav;

    //JUMP
    if(BUTTON_PRESSED(BUTTON_UP) && !player.jumped) {
        jump();
    }

    //moving down
    if (collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow + player.rdel) + player.height - 1, player.worldCol, 256)]
    && collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow + player.rdel) + player.height - 1, player.worldCol + player.width - 1, 256)]) {
        player.worldRow += player.rdel;
        enemyCollision();
    } else {
        player.rdel = 0;
    }

    //collisionbitmap with the floor
    if (!collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow + player.rdel) + player.height - 1, player.worldCol, 256)]
        || !collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow + player.rdel) + player.height - 1, player.worldCol + player.width - 1, 256)]) {

        if (player.jumped) {
            player.blink = 1;
        }

        //once the player hit's the floor again, then he can jump
        player.jumped = 0;
    }

    //GOING LEFT
    if (player.aniState == PLAYLEFT
        && player.screenCol > 0
        && (collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol - player.cdel, 256)]
        || collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol - player.cdel, 256)])) {

        player.worldCol -= player.cdel;

        //If you hit a wall, change direction to go RIGHT
        if (!collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol - player.cdel, 256)]
            || !collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol - player.cdel, 256)]) {
            player.aniState = PLAYRIGHT;
            player.blink = 1;
        }

        if (hOff > 0) {
            hOff--;
        }

    }

    //GOING RIGHT
    if (player.aniState == PLAYRIGHT
        && player.screenCol + player.width < SCREENWIDTH
        && (collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol + player.width - 1 + player.cdel, 256)]
        || collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol + player.width - 1 + player.cdel, 256)])) {
        player.worldCol += player.cdel;

        //If you hit a wall, change direction to go LEFT
        if (!collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol + player.width - 1 + player.cdel, 256)]
            || !collisionmap2Bitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol + player.width - 1 + player.cdel, 256)]) {

            player.aniState = PLAYLEFT;
            player.blink = 1;
        }

        if (hOff < 256 - SCREENWIDTH) {
            hOff++;
        }
    }

    //GOING DOWN

    if (vOff > 0 && player.screenRow < SCREENHEIGHT/2) {
        vOff--;
    }

    //GOING UP
    if (vOff < 256 - SCREENHEIGHT && player.screenRow > SCREENHEIGHT/2) {
        vOff ++;
    }

    player.screenCol = (player.worldCol) - hOff;
    player.screenRow = SHIFTDOWN(player.worldRow) - vOff;

    animatePlayer();
}

// Handle player animation states
void animatePlayer() {
    if (player.blink) {
        player.curFrame = 3;
    }

    if (player.aniCounter >= 10) {
        player.curFrame = 0;
        player.aniCounter = 0;
        player.blink = 0;
    }

    player.aniCounter++;

}

// Draw the player
void drawPlayer() {

    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        shadowOAM[0].attr0 = (ROWMASK & player.screenRow) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & player.screenCol) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.curFrame * 2, player.aniState * 2);
    }
}

//initialize the objects
void initObject() {
    //initialize the KEY (wide and tiny)
    key.width = 16;
    key.height = 8;
    key.screenRow = 127;
    key.screenCol = 6;
    key.worldRow = 127;
    key.worldCol = 6;
    key.activated = 1;

    //initialize the ladder (tall and small)
    ladder.width = 8;
    ladder.height = 32;
    ladder.screenRow = 27;
    ladder.screenCol = 177;
    ladder.worldRow = 27;
    ladder.worldCol = 177;
    ladder.activated = 0;

    //initialize the STAR (square and tiny)
    star.width = 8;
    star.height = 8;
    star.screenRow = 155;
    star.screenCol = 100;
    star.worldRow = 155;
    star.worldCol = 100;
    star.activated = 1;
}

//move the object with the background
void updateObject() {
    key.screenCol = key.worldCol - hOff;
    key.screenRow = key.worldRow - vOff;

    ladder.screenCol = ladder.worldCol - hOff;
    ladder.screenRow = ladder.worldRow - vOff;

    star.screenCol = star.worldCol - hOff;
    star.screenRow = star.worldRow - vOff;
}

//Draw the key
void drawKey() {
    shadowOAM[2].attr0 = (ROWMASK & key.screenRow) | ATTR0_WIDE;
    shadowOAM[2].attr1 = (COLMASK & key.screenCol) | ATTR1_TINY;
    shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);
}

//Draw the ladder
void drawLadder() {
    shadowOAM[4].attr0 = (ROWMASK & (ladder.screenRow - 32)) | ATTR0_TALL;
    shadowOAM[4].attr1 = (COLMASK & ladder.screenCol) | ATTR1_SMALL;
    shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1, 4);
}

//Draw Star
void drawStar() {
    shadowOAM[9].attr0 = (ROWMASK & star.screenRow) | ATTR0_SQUARE;
    shadowOAM[9].attr1 = (COLMASK & star.screenCol) | ATTR1_TINY;
    shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(9, 4);
}

//if collision with enemy, jump the same way
void enemyCollision() {
    if (!player.jumped && enemy.activated && collision(player.screenRow, player.screenCol, player.height, player.width, enemy.screenRow, enemy.screenCol, enemy.height, enemy.width)) {
        //jump
        jump();
        player.jumped = 1;
        player.lives--;

        //play collision sound
        playSoundB(collideSound, COLLIDESOUNDLEN, COLLIDESOUNDFREQ, 0);
    }
}

void checkCollision() {
    //if collision with key, make the ladder appear!
    if (key.activated && collision(player.screenRow, player.screenCol, player.height, player.width, key.screenRow, key.screenCol, key.height, key.width)) {
        // drawLadder();
        ladder.activated = 1;
        key.activated = 0;
        playSoundB(accept, ACCEPTLEN, ACCEPTFREQ, 0);
    }

    //if collision with ladder
    if (ladder.activated && collision(player.screenRow, player.screenCol, player.height, player.width, ladder.screenRow - 32, ladder.screenCol, ladder.height, ladder.width)) {
        winGame = 1;
        stopSound();
        playSoundB(winSound, WINSOUNDLEN, WINSOUNDFREQ, 0);
    }

    //if collision with star, allow for cheat!
    if (star.activated && collision(player.screenRow, player.screenCol, player.height, player.width, star.screenRow, star.screenCol, star.height, star.width)) {
        cheat = 1;
        star.activated = 0;
        playSoundB(magic, MAGICLEN, MAGICFREQ, 0);
    }
}

void jump() {
    //GRAVITY
    player.rdel -= jumpval;
    player.jumped = 1;
}

////////////Enemy
//Initialize the enemy
void initEnemy() {
    enemy.width = 16;
    enemy.height = 12;
    enemy.screenRow = 183;
    enemy.screenCol = 205;
    enemy.worldRow = 183;
    enemy.worldCol = 205;
    enemy.activated = 1;
    enemy.cdel = 1;
    enemy.state = ENEMYRIGHT;
}

// Draw the player
void drawEnemy() {
    if (!enemy.activated) {
        shadowOAM[5].attr0 |= ATTR0_HIDE;
    } else if (enemy.state == ENEMYRIGHT) {
        shadowOAM[5].attr0 = (ROWMASK & enemy.screenRow) | ATTR0_SQUARE;
        shadowOAM[5].attr1 = (COLMASK & enemy.screenCol) | ATTR1_SMALL;
        shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7, 4);
    } else if (enemy.state == ENEMYLEFT) {
        shadowOAM[5].attr0 = (ROWMASK & enemy.screenRow) | ATTR0_SQUARE;
        shadowOAM[5].attr1 = (COLMASK & enemy.screenCol) | ATTR1_SMALL;
        shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7, 6);
    }
}

void updateEnemy() {
    //GOING LEFT
    if ((collisionmap2Bitmap[OFFSET((enemy.worldRow), enemy.worldCol - enemy.cdel, 256)]
        || collisionmap2Bitmap[OFFSET((enemy.worldRow) + enemy.height - 1, enemy.worldCol - enemy.cdel, 256)])) {
        enemy.worldCol += enemy.cdel;

        //If you hit a wall, change direction to go RIGHT
        if (!collisionmap2Bitmap[OFFSET((enemy.worldRow), enemy.worldCol - enemy.cdel, 256)]
            || !collisionmap2Bitmap[OFFSET((enemy.worldRow) + enemy.height - 1, enemy.worldCol - enemy.cdel, 256)]) {
            enemy.cdel = 1;
            enemy.state = ENEMYRIGHT;
        }
    }

    //GOING RIGHT
    if ((collisionmap2Bitmap[OFFSET((enemy.worldRow), enemy.worldCol + enemy.width - 1 + enemy.cdel, 256)]
        || collisionmap2Bitmap[OFFSET((enemy.worldRow) + enemy.height - 1, enemy.worldCol + enemy.width - 1 + enemy.cdel, 256)])) {
        enemy.worldCol += enemy.cdel;

        //If you hit a wall, change direction to go LEFT
        if (!collisionmap2Bitmap[OFFSET((enemy.worldRow), enemy.worldCol + enemy.width - 1 + enemy.cdel, 256)]
            || !collisionmap2Bitmap[OFFSET((enemy.worldRow) + enemy.height - 1, enemy.worldCol + enemy.width - 1 + enemy.cdel, 256)]) {
            enemy.cdel = (-1);
            enemy.state = ENEMYLEFT;
        }
    }

    enemy.screenCol = enemy.worldCol - hOff;
    enemy.screenRow = enemy.worldRow - vOff;
}





// LEVEL1 LEVEL1 LEVEL1 LEVEL1 LEVEL1 LEVEL1 LEVEL1 LEVEL1 LEVEL1
// Initialize Level 1
void initLevel1() {
    cheat = 0;
    inLevel1 = 1;
    inLevel2 = 0;
    grav = 70;

    // Place screen on map
    vOff = 0;
    hOff = 0;
    winGame = 0;

    shadowOAM[5].attr0 = ATTR0_HIDE;

    initPlayer1();

    //place the obstacle objects in the game
    initObject1();
    drawObject();
    drawKey1();
    drawStar1();

    //Init lives
    initLives();
    drawLives();

    //SOUND
    stopSound();
    playSoundA(gameSong, GAMESONGLEN, GAMESONGFREQ, 1);
}

// Updates the game each frame
void updateLevel1() {
    if (BUTTON_PRESSED(BUTTON_A)) {
        cheat = 1;
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        cheat = 0;
    }

    updatePlayer1();
    updateObject1();

    if (player.lives == 0) {
        stopSound();
        playSoundB(loseSound, LOSESOUNDLEN, LOSESOUNDFREQ, 0);
    }
}

// Draws the game each frame
void drawLevel1() {

    drawPlayer();
    drawObject();
    drawLives();

    if (key.activated) {
        drawKey1();
    } else {
        shadowOAM[2].attr0 = ATTR0_HIDE;
    }

    if (star.activated) {
        drawStar1();
    } else {
        star.screenRow = 2;
        star.screenCol = 45;
        drawStar1();
    }

    if (ladder.activated) {
        drawLadder1();
    } else {
        shadowOAM[3].attr0 = ATTR0_HIDE;
        shadowOAM[4].attr0 = ATTR0_HIDE;
    }

    DMANow(3, shadowOAM, OAM, 128*4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    REG_BG2HOFF = hOff / 3;
}

// Initialize the player
void initPlayer1() {
    player.width = 16;
    player.height = 16;

    //GRAV2
    player.rdel = SHIFTUP(0);

    //GRAV1
    // player.rdel = 30;
    player.cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    //GRAV2
    player.worldRow = SHIFTUP(SCREENHEIGHT/2-player.width/2 + vOff + 19);

    //GRAV1
    // player.worldRow = SCREENHEIGHT/2-player.width/2 + vOff + 19;

    player.worldCol = SCREENWIDTH/2-player.height/2 + hOff + 100;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 2;
    player.aniState = PLAYRIGHT;

    player.screenCol = player.worldCol - hOff;
    player.screenRow = SHIFTDOWN(player.worldRow) - vOff;

    player.jumped = 0;
    player.blink = 0;
    player.lives = 3;
}

// Handle every-frame actions of the player
void updatePlayer1() {

    //check for collisions to see if you lose a life
    checkCollision1();

    if (cheat) {
        checkCheat();
    }
    //Update to include complex camera movement
    //Update based on collision map

    //GRAV1
    //GRAV2
    player.rdel += grav;

    //JUMP
    if(BUTTON_PRESSED(BUTTON_UP) && !player.jumped) {
        jump();
    }

    if (collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow + player.rdel) + player.height - 1, player.worldCol, 256)]
    && collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow + player.rdel) + player.height - 1, player.worldCol + player.width - 1, 256)]) {
        player.worldRow += player.rdel;
    } else {
        player.rdel = 0;
    }

    if (!collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1 + (1), player.worldCol, 256)]
        || !collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1 + (1), player.worldCol + player.width - 1, 256)]) {
        if (player.jumped) {
            player.blink = 1;
        }

        //once the player hit's the floor again (collision), then he can jump
        player.jumped = 0;
    }

    //GOING LEFT
    if (player.aniState == PLAYLEFT
        && player.screenCol > 0
        && (collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol - player.cdel, 256)]
        || collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol - player.cdel, 256)])) {

        player.worldCol -= player.cdel;

        //If you hit a wall, change direction to go RIGHT
        if (!collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol - player.cdel, 256)]
            || !collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol - player.cdel, 256)]) {
            player.aniState = PLAYRIGHT;
            player.blink = 1;
        }

        if (hOff > 0) {
            hOff--;
        }

    }

    //GOING RIGHT
    if (player.aniState == PLAYRIGHT
        && player.screenCol + player.width < SCREENWIDTH
        && (collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol + player.width - 1 + player.cdel, 256)]
        || collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol + player.width - 1 + player.cdel, 256)])) {
        player.worldCol += player.cdel;

        //If you hit a wall, change direction to go LEFT
        if (!collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow), player.worldCol + player.width - 1 + player.cdel, 256)]
            || !collisionmapBitmap[OFFSET(SHIFTDOWN(player.worldRow) + player.height - 1, player.worldCol + player.width - 1 + player.cdel, 256)]) {

            player.aniState = PLAYLEFT;
            player.blink = 1;
        }

        if (hOff < 256 - SCREENWIDTH) {
            hOff++;
        }
    }

    player.screenCol = (player.worldCol) - hOff;
    player.screenRow = SHIFTDOWN(player.worldRow) - vOff;

    animatePlayer();
}

//initialize the objects
void initObject1() {

    //initialize the SPIKES (wide and small)
    spikes.width = 32;
    spikes.height = 8;
    spikes.screenRow = 111;
    spikes.screenCol = 50;
    spikes.worldRow = 111;
    spikes.worldCol = 50;

    //initialize the KEY (wide and tiny)
    key.width = 16;
    key.height = 8;
    key.screenRow = 99;
    key.screenCol = 6;
    key.worldRow = 99;
    key.worldCol = 6;
    key.activated = 1;

    //initialize the ladder (tall and small)
    ladder.width = 8;
    ladder.height = 32;
    ladder.screenRow = 27;
    ladder.screenCol = 177;
    ladder.worldRow = 27;
    ladder.worldCol = 177;
    ladder.activated = 0;

    //initialize the STAR (square and tiny)
    star.width = 8;
    star.height = 8;
    star.screenRow = 70;
    star.screenCol = 230;
    star.worldRow = 70;
    star.worldCol = 230;
    star.activated = 1;
}

//move the object with the background
void updateObject1() {
    spikes.screenCol = spikes.worldCol - hOff;
    spikes.screenRow = spikes.worldRow - vOff;

    key.screenCol = key.worldCol - hOff;
    key.screenRow = key.worldRow - vOff;

    ladder.screenCol = ladder.worldCol - hOff;
    ladder.screenRow = ladder.worldRow - vOff;

    star.screenCol = star.worldCol - hOff;
    star.screenRow = star.worldRow - vOff;
}

// Draw the spikes
void drawObject() {
    shadowOAM[1].attr0 = (ROWMASK & spikes.screenRow) | ATTR0_WIDE;
    shadowOAM[1].attr1 = (COLMASK & spikes.screenCol) | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(9, 0);
}

//Draw the key
void drawKey1() {
    shadowOAM[2].attr0 = (ROWMASK & key.screenRow) | ATTR0_WIDE;
    shadowOAM[2].attr1 = (COLMASK & key.screenCol) | ATTR1_TINY;
    shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 4);
}

//Draw the ladder
void drawLadder1() {
    shadowOAM[3].attr0 = (ROWMASK & ladder.screenRow) | ATTR0_TALL;
    shadowOAM[3].attr1 = (COLMASK & ladder.screenCol) | ATTR1_SMALL;
    shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1, 4);

    shadowOAM[4].attr0 = (ROWMASK & (ladder.screenRow - 32)) | ATTR0_TALL;
    shadowOAM[4].attr1 = (COLMASK & ladder.screenCol) | ATTR1_SMALL;
    shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(1, 4);
}

//Draw Star
void drawStar1() {
    shadowOAM[9].attr0 = (ROWMASK & star.screenRow) | ATTR0_SQUARE;
    shadowOAM[9].attr1 = (COLMASK & star.screenCol) | ATTR1_TINY;
    shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(9, 4);
}

void checkCollision1() {
    //if collision with spikes, then decrease the lives
    if (collision(player.screenRow, player.screenCol, player.height, player.width, spikes.screenRow, spikes.screenCol, spikes.height, spikes.width)) {
        //decrease lives
        player.lives--;

        //jump and change direction
        jump();
        if (player.aniState == PLAYRIGHT) {
            player.aniState = PLAYLEFT;
        } else {
            player.aniState = PLAYRIGHT;
        }

        //play collision sound
        playSoundB(collideSound, COLLIDESOUNDLEN, COLLIDESOUNDFREQ, 0);
    }

    //if collision with key, make the ladder appear!
    if (key.activated && collision(player.screenRow, player.screenCol, player.height, player.width, key.screenRow, key.screenCol, key.height, key.width)) {
        // drawLadder();
        ladder.activated = 1;
        key.activated = 0;
        playSoundB(accept, ACCEPTLEN, ACCEPTFREQ, 0);
    }

    //if collision with ladder
    if (ladder.activated && collision(player.screenRow, player.screenCol, player.height, player.width, ladder.screenRow, ladder.screenCol, ladder.height, ladder.width)) {
        winLevel1 = 1;
    }

    //if collision with star, allow for cheat!
    if (star.activated && collision(player.screenRow, player.screenCol, player.height, player.width, star.screenRow, star.screenCol, star.height, star.width)) {
        cheat = 1;
        star.activated = 0;
        playSoundB(magic, MAGICLEN, MAGICFREQ, 0);
    }
}

void checkCheat() {
    //if going right and press button left, then go left
    if (player.aniState == PLAYRIGHT && BUTTON_PRESSED(BUTTON_LEFT)) {
        player.aniState = PLAYLEFT;
    }

    if (player.aniState == PLAYLEFT && BUTTON_PRESSED(BUTTON_RIGHT)) {
        player.aniState = PLAYRIGHT;
    }
}

void initLives() {
    //heart1
    heart1.width = 16;
    heart1.height = 16;
    heart1.activated = 1;
    heart1.screenRow = 2;
    heart1.screenCol = 5;
    heart1.worldRow = 2;
    heart1.worldCol = 5;

    //heart2
    heart2.width = 16;
    heart2.height = 16;
    heart2.activated = 1;
    heart2.screenRow = 2;
    heart2.screenCol = 18;
    heart2.worldRow = 2;
    heart2.worldCol = 18;

    //heart3
    heart3.width = 16;
    heart3.height = 16;
    heart3.activated = 1;
    heart3.screenRow = 2;
    heart3.screenCol = 31;
    heart3.worldRow = 2;
    heart3.worldCol = 31;
}

//LIVES
void drawLives() {
    //heart1
    shadowOAM[(6)].attr0 = (ROWMASK & heart1.screenRow) | ATTR0_SQUARE;
    shadowOAM[(6)].attr1 = (COLMASK & heart1.screenCol) | ATTR1_TINY;
    shadowOAM[6].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5, 4);

    //heart2
    shadowOAM[7].attr0 = (ROWMASK & heart2.screenRow) | ATTR0_SQUARE;
    shadowOAM[7].attr1 = (COLMASK & heart2.screenCol) | ATTR1_TINY;
    shadowOAM[(7)].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5, 4);

    //heart3
    shadowOAM[8].attr0 = (ROWMASK & heart3.screenRow) | ATTR0_SQUARE;
    shadowOAM[8].attr1 = (COLMASK & heart3.screenCol) | ATTR1_TINY;
    shadowOAM[8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5, 4);

    if (player.lives <= 2) {
        shadowOAM[8].attr0 = ATTR0_HIDE;
    }

    if (player.lives <= 1) {
        shadowOAM[7].attr0 = ATTR0_HIDE;
    }
}

void updateLives() {
    //2 lives left
    if (player.lives <= 2) {
        shadowOAM[8].attr0 = ATTR0_HIDE;
    }

    if (player.lives <= 1) {
        shadowOAM[7].attr0 = ATTR0_HIDE;
    }
}