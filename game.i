# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 70 "myLib.h"
extern unsigned short *videoBuffer;
# 91 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int row, int col, unsigned short color);
void drawRect3(int row, int col, int height, int width, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int row, int col, unsigned char colorIndex);
void drawRect4(int row, int col, int height, int width, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int row, int col, int height, int width, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 163 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;

    int lives;

    int hide;
    int jumped;
    int blink;
} ANISPRITE;


typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int width;
    int height;
    int activated;
    int cdel;
    int state;
} OBJECT;
# 223 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 234 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 274 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);

int topcollision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);

int sidecollision(int rowA, int colA, int heightA, int widthA, int rowB, int colB, int heightB, int widthB);
# 374 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

typedef struct
{
    int row;
    int col;
    int rdel;
    int cdel;
    int size;
    u16 color;
    int AI_STATE;
} MOVOBJ;
# 2 "game.c" 2
# 1 "level2game.h" 1





extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE player;

extern int winGame;
extern int winLevel1;
extern int inLevel1;
extern int inLevel2;
extern int cheat;


void initLevel2();
void updateLevel2();
void drawLevel2();

void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();

void initObject();
void updateObject();

void drawKey();
void drawLadder();
void drawStar();

void checkCollision();

void jump();

void initEnemy();
void drawEnemy();
void updateEnemy();
void enemyCollision();



void initLevel1();
void updateLevel1();
void drawLevel1();

void initPlayer1();
void initObject1();

void updatePlayer1();
void updateObject1();

void drawObject();
void drawKey1();
void drawLadder1();
void drawStar1();

void checkCollision1();
void checkCheat();


void initLives();
void drawLives();
# 3 "game.c" 2
# 1 "collisionmap.h" 1
# 20 "collisionmap.h"
extern const unsigned short collisionmapBitmap[65536];
# 4 "game.c" 2
# 1 "collisionmap2.h" 1
# 20 "collisionmap2.h"
extern const unsigned short collisionmap2Bitmap[65536];
# 5 "game.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;

void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 6 "game.c" 2
# 1 "gameSong.h" 1
# 20 "gameSong.h"
extern const unsigned char gameSong[255301];
# 7 "game.c" 2
# 1 "collideSound.h" 1
# 20 "collideSound.h"
extern const unsigned char collideSound[55125];
# 8 "game.c" 2
# 1 "accept.h" 1
# 20 "accept.h"
extern const unsigned char accept[9606];
# 9 "game.c" 2
# 1 "magic.h" 1
# 20 "magic.h"
extern const unsigned char magic[7698];
# 10 "game.c" 2
# 1 "winSound.h" 1
# 20 "winSound.h"
extern const unsigned char winSound[18202];
# 11 "game.c" 2
# 1 "loseSound.h" 1
# 20 "loseSound.h"
extern const unsigned char loseSound[45764];
# 12 "game.c" 2


int hOff;
int vOff;
OBJ_ATTR shadowOAM[128];
ANISPRITE player;
OBJECT key;
OBJECT ladder;
OBJECT enemy;
OBJECT spikes;

OBJECT star;


OBJECT heart1;
OBJECT heart2;
OBJECT heart3;


int cheat = 0;


int grav;
int jumpval = 1000;



enum {PLAYRIGHT, PLAYLEFT};

enum {ENEMYRIGHT, ENEMYLEFT};


void initLevel2() {
    cheat = 0;
    inLevel1 = 0;
    inLevel2 = 1;



    grav = 70;


    vOff = 0;
    hOff = 0;
    winGame = 0;
    winLevel1 = 0;

    initPlayer();


    shadowOAM[1].attr0 = (2<<8);

    initObject();
    drawKey();
    drawStar();
    initEnemy();
}


void updateLevel2() {
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        cheat = 1;
    }

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        cheat = 0;
    }

 updatePlayer();
    updateObject();
    updateEnemy();

    if (player.lives == 0) {
        stopSound();
        playSoundB(loseSound, 45764, 11025, 0);
    }
}


void drawLevel2() {

    drawPlayer();
    drawEnemy();
    drawLives();

    if (key.activated) {
        drawKey();
    } else {
        shadowOAM[2].attr0 = (2<<8);
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
        shadowOAM[3].attr0 = (2<<8);
        shadowOAM[4].attr0 = (2<<8);
    }

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;

    (*(volatile unsigned short *)0x04000018) = hOff / 3;
}


void initPlayer() {
    player.width = 16;
    player.height = 16;


    player.rdel = ((0) << 8);



    player.cdel = 1;



    player.worldRow = ((160/2-player.width/2 + vOff + 19) << 8);


    player.worldCol = 240/2-player.height/2 + hOff + 100;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 2;
    player.aniState = PLAYRIGHT;

    player.screenCol = player.worldCol - hOff;
    player.screenRow = ((player.worldRow) >> 8) - vOff;

    player.jumped = 0;
    player.blink = 0;
}


void updatePlayer() {

    checkCollision();

    if (cheat) {
        checkCheat();
    }




    player.rdel += grav;


    if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))) && !player.jumped) {
        jump();
    }


    if (collisionmap2Bitmap[((((player.worldRow + player.rdel) >> 8) + player.height - 1)*(256)+(player.worldCol))]
    && collisionmap2Bitmap[((((player.worldRow + player.rdel) >> 8) + player.height - 1)*(256)+(player.worldCol + player.width - 1))]) {
        player.worldRow += player.rdel;
        enemyCollision();
    } else {
        player.rdel = 0;
    }


    if (!collisionmap2Bitmap[((((player.worldRow + player.rdel) >> 8) + player.height - 1)*(256)+(player.worldCol))]
        || !collisionmap2Bitmap[((((player.worldRow + player.rdel) >> 8) + player.height - 1)*(256)+(player.worldCol + player.width - 1))]) {

        if (player.jumped) {
            player.blink = 1;
        }


        player.jumped = 0;
    }


    if (player.aniState == PLAYLEFT
        && player.screenCol > 0
        && (collisionmap2Bitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol - player.cdel))]
        || collisionmap2Bitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol - player.cdel))])) {

        player.worldCol -= player.cdel;


        if (!collisionmap2Bitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol - player.cdel))]
            || !collisionmap2Bitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol - player.cdel))]) {
            player.aniState = PLAYRIGHT;
            player.blink = 1;
        }

        if (hOff > 0) {
            hOff--;
        }

    }


    if (player.aniState == PLAYRIGHT
        && player.screenCol + player.width < 240
        && (collisionmap2Bitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol + player.width - 1 + player.cdel))]
        || collisionmap2Bitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol + player.width - 1 + player.cdel))])) {
        player.worldCol += player.cdel;


        if (!collisionmap2Bitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol + player.width - 1 + player.cdel))]
            || !collisionmap2Bitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol + player.width - 1 + player.cdel))]) {

            player.aniState = PLAYLEFT;
            player.blink = 1;
        }

        if (hOff < 256 - 240) {
            hOff++;
        }
    }



    if (vOff > 0 && player.screenRow < 160/2) {
        vOff--;
    }


    if (vOff < 256 - 160 && player.screenRow > 160/2) {
        vOff ++;
    }

    player.screenCol = (player.worldCol) - hOff;
    player.screenRow = ((player.worldRow) >> 8) - vOff;

    animatePlayer();
}


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


void drawPlayer() {

    if (player.hide) {
        shadowOAM[0].attr0 |= (2<<8);
    } else {
        shadowOAM[0].attr0 = (0xFF & player.screenRow) | (0<<14);
        shadowOAM[0].attr1 = (0x1FF & player.screenCol) | (1<<14);
        shadowOAM[0].attr2 = ((0)<<12) | ((player.curFrame * 2)*32+(player.aniState * 2));
    }
}


void initObject() {

    key.width = 16;
    key.height = 8;
    key.screenRow = 127;
    key.screenCol = 6;
    key.worldRow = 127;
    key.worldCol = 6;
    key.activated = 1;


    ladder.width = 8;
    ladder.height = 32;
    ladder.screenRow = 27;
    ladder.screenCol = 177;
    ladder.worldRow = 27;
    ladder.worldCol = 177;
    ladder.activated = 0;


    star.width = 8;
    star.height = 8;
    star.screenRow = 155;
    star.screenCol = 100;
    star.worldRow = 155;
    star.worldCol = 100;
    star.activated = 1;
}


void updateObject() {
    key.screenCol = key.worldCol - hOff;
    key.screenRow = key.worldRow - vOff;

    ladder.screenCol = ladder.worldCol - hOff;
    ladder.screenRow = ladder.worldRow - vOff;

    star.screenCol = star.worldCol - hOff;
    star.screenRow = star.worldRow - vOff;
}


void drawKey() {
    shadowOAM[2].attr0 = (0xFF & key.screenRow) | (1<<14);
    shadowOAM[2].attr1 = (0x1FF & key.screenCol) | (0<<14);
    shadowOAM[2].attr2 = ((0)<<12) | ((0)*32+(4));
}


void drawLadder() {
    shadowOAM[4].attr0 = (0xFF & (ladder.screenRow - 32)) | (2<<14);
    shadowOAM[4].attr1 = (0x1FF & ladder.screenCol) | (1<<14);
    shadowOAM[4].attr2 = ((0)<<12) | ((1)*32+(4));
}


void drawStar() {
    shadowOAM[9].attr0 = (0xFF & star.screenRow) | (0<<14);
    shadowOAM[9].attr1 = (0x1FF & star.screenCol) | (0<<14);
    shadowOAM[9].attr2 = ((0)<<12) | ((9)*32+(4));
}


void enemyCollision() {
    if (!player.jumped && enemy.activated && collision(player.screenRow, player.screenCol, player.height, player.width, enemy.screenRow, enemy.screenCol, enemy.height, enemy.width)) {

        jump();
        player.jumped = 1;
        player.lives--;


        playSoundB(collideSound, 55125, 11025, 0);
    }
}

void checkCollision() {

    if (key.activated && collision(player.screenRow, player.screenCol, player.height, player.width, key.screenRow, key.screenCol, key.height, key.width)) {

        ladder.activated = 1;
        key.activated = 0;
        playSoundB(accept, 9606, 11025, 0);
    }


    if (ladder.activated && collision(player.screenRow, player.screenCol, player.height, player.width, ladder.screenRow - 32, ladder.screenCol, ladder.height, ladder.width)) {
        winGame = 1;
        stopSound();
        playSoundB(winSound, 18202, 11025, 0);
    }


    if (star.activated && collision(player.screenRow, player.screenCol, player.height, player.width, star.screenRow, star.screenCol, star.height, star.width)) {
        cheat = 1;
        star.activated = 0;
        playSoundB(magic, 7698, 11025, 0);
    }
}

void jump() {

    player.rdel -= jumpval;
    player.jumped = 1;
}



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


void drawEnemy() {
    if (!enemy.activated) {
        shadowOAM[5].attr0 |= (2<<8);
    } else if (enemy.state == ENEMYRIGHT) {
        shadowOAM[5].attr0 = (0xFF & enemy.screenRow) | (0<<14);
        shadowOAM[5].attr1 = (0x1FF & enemy.screenCol) | (1<<14);
        shadowOAM[5].attr2 = ((0)<<12) | ((7)*32+(4));
    } else if (enemy.state == ENEMYLEFT) {
        shadowOAM[5].attr0 = (0xFF & enemy.screenRow) | (0<<14);
        shadowOAM[5].attr1 = (0x1FF & enemy.screenCol) | (1<<14);
        shadowOAM[5].attr2 = ((0)<<12) | ((7)*32+(6));
    }
}

void updateEnemy() {

    if ((collisionmap2Bitmap[(((enemy.worldRow))*(256)+(enemy.worldCol - enemy.cdel))]
        || collisionmap2Bitmap[(((enemy.worldRow) + enemy.height - 1)*(256)+(enemy.worldCol - enemy.cdel))])) {
        enemy.worldCol += enemy.cdel;


        if (!collisionmap2Bitmap[(((enemy.worldRow))*(256)+(enemy.worldCol - enemy.cdel))]
            || !collisionmap2Bitmap[(((enemy.worldRow) + enemy.height - 1)*(256)+(enemy.worldCol - enemy.cdel))]) {
            enemy.cdel = 1;
            enemy.state = ENEMYRIGHT;
        }
    }


    if ((collisionmap2Bitmap[(((enemy.worldRow))*(256)+(enemy.worldCol + enemy.width - 1 + enemy.cdel))]
        || collisionmap2Bitmap[(((enemy.worldRow) + enemy.height - 1)*(256)+(enemy.worldCol + enemy.width - 1 + enemy.cdel))])) {
        enemy.worldCol += enemy.cdel;


        if (!collisionmap2Bitmap[(((enemy.worldRow))*(256)+(enemy.worldCol + enemy.width - 1 + enemy.cdel))]
            || !collisionmap2Bitmap[(((enemy.worldRow) + enemy.height - 1)*(256)+(enemy.worldCol + enemy.width - 1 + enemy.cdel))]) {
            enemy.cdel = (-1);
            enemy.state = ENEMYLEFT;
        }
    }

    enemy.screenCol = enemy.worldCol - hOff;
    enemy.screenRow = enemy.worldRow - vOff;
}







void initLevel1() {
    cheat = 0;
    inLevel1 = 1;
    inLevel2 = 0;
    grav = 70;


    vOff = 0;
    hOff = 0;
    winGame = 0;

    shadowOAM[5].attr0 = (2<<8);

    initPlayer1();


    initObject1();
    drawObject();
    drawKey1();
    drawStar1();


    initLives();
    drawLives();


    stopSound();
    playSoundA(gameSong, 255301, 11025, 1);
}


void updateLevel1() {
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        cheat = 1;
    }

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        cheat = 0;
    }

    updatePlayer1();
    updateObject1();

    if (player.lives == 0) {
        stopSound();
        playSoundB(loseSound, 45764, 11025, 0);
    }
}


void drawLevel1() {

    drawPlayer();
    drawObject();
    drawLives();

    if (key.activated) {
        drawKey1();
    } else {
        shadowOAM[2].attr0 = (2<<8);
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
        shadowOAM[3].attr0 = (2<<8);
        shadowOAM[4].attr0 = (2<<8);
    }

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;

    (*(volatile unsigned short *)0x04000018) = hOff / 3;
}


void initPlayer1() {
    player.width = 16;
    player.height = 16;


    player.rdel = ((0) << 8);



    player.cdel = 1;



    player.worldRow = ((160/2-player.width/2 + vOff + 19) << 8);




    player.worldCol = 240/2-player.height/2 + hOff + 100;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 2;
    player.aniState = PLAYRIGHT;

    player.screenCol = player.worldCol - hOff;
    player.screenRow = ((player.worldRow) >> 8) - vOff;

    player.jumped = 0;
    player.blink = 0;
    player.lives = 3;
}


void updatePlayer1() {


    checkCollision1();

    if (cheat) {
        checkCheat();
    }





    player.rdel += grav;


    if((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))) && !player.jumped) {
        jump();
    }

    if (collisionmapBitmap[((((player.worldRow + player.rdel) >> 8) + player.height - 1)*(256)+(player.worldCol))]
    && collisionmapBitmap[((((player.worldRow + player.rdel) >> 8) + player.height - 1)*(256)+(player.worldCol + player.width - 1))]) {
        player.worldRow += player.rdel;
    } else {
        player.rdel = 0;
    }

    if (!collisionmapBitmap[((((player.worldRow) >> 8) + player.height - 1 + (1))*(256)+(player.worldCol))]
        || !collisionmapBitmap[((((player.worldRow) >> 8) + player.height - 1 + (1))*(256)+(player.worldCol + player.width - 1))]) {
        if (player.jumped) {
            player.blink = 1;
        }


        player.jumped = 0;
    }


    if (player.aniState == PLAYLEFT
        && player.screenCol > 0
        && (collisionmapBitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol - player.cdel))]
        || collisionmapBitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol - player.cdel))])) {

        player.worldCol -= player.cdel;


        if (!collisionmapBitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol - player.cdel))]
            || !collisionmapBitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol - player.cdel))]) {
            player.aniState = PLAYRIGHT;
            player.blink = 1;
        }

        if (hOff > 0) {
            hOff--;
        }

    }


    if (player.aniState == PLAYRIGHT
        && player.screenCol + player.width < 240
        && (collisionmapBitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol + player.width - 1 + player.cdel))]
        || collisionmapBitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol + player.width - 1 + player.cdel))])) {
        player.worldCol += player.cdel;


        if (!collisionmapBitmap[((((player.worldRow) >> 8))*(256)+(player.worldCol + player.width - 1 + player.cdel))]
            || !collisionmapBitmap[((((player.worldRow) >> 8) + player.height - 1)*(256)+(player.worldCol + player.width - 1 + player.cdel))]) {

            player.aniState = PLAYLEFT;
            player.blink = 1;
        }

        if (hOff < 256 - 240) {
            hOff++;
        }
    }

    player.screenCol = (player.worldCol) - hOff;
    player.screenRow = ((player.worldRow) >> 8) - vOff;

    animatePlayer();
}


void initObject1() {


    spikes.width = 32;
    spikes.height = 8;
    spikes.screenRow = 111;
    spikes.screenCol = 50;
    spikes.worldRow = 111;
    spikes.worldCol = 50;


    key.width = 16;
    key.height = 8;
    key.screenRow = 99;
    key.screenCol = 6;
    key.worldRow = 99;
    key.worldCol = 6;
    key.activated = 1;


    ladder.width = 8;
    ladder.height = 32;
    ladder.screenRow = 27;
    ladder.screenCol = 177;
    ladder.worldRow = 27;
    ladder.worldCol = 177;
    ladder.activated = 0;


    star.width = 8;
    star.height = 8;
    star.screenRow = 70;
    star.screenCol = 230;
    star.worldRow = 70;
    star.worldCol = 230;
    star.activated = 1;
}


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


void drawObject() {
    shadowOAM[1].attr0 = (0xFF & spikes.screenRow) | (1<<14);
    shadowOAM[1].attr1 = (0x1FF & spikes.screenCol) | (1<<14);
    shadowOAM[1].attr2 = ((0)<<12) | ((9)*32+(0));
}


void drawKey1() {
    shadowOAM[2].attr0 = (0xFF & key.screenRow) | (1<<14);
    shadowOAM[2].attr1 = (0x1FF & key.screenCol) | (0<<14);
    shadowOAM[2].attr2 = ((0)<<12) | ((0)*32+(4));
}


void drawLadder1() {
    shadowOAM[3].attr0 = (0xFF & ladder.screenRow) | (2<<14);
    shadowOAM[3].attr1 = (0x1FF & ladder.screenCol) | (1<<14);
    shadowOAM[3].attr2 = ((0)<<12) | ((1)*32+(4));

    shadowOAM[4].attr0 = (0xFF & (ladder.screenRow - 32)) | (2<<14);
    shadowOAM[4].attr1 = (0x1FF & ladder.screenCol) | (1<<14);
    shadowOAM[4].attr2 = ((0)<<12) | ((1)*32+(4));
}


void drawStar1() {
    shadowOAM[9].attr0 = (0xFF & star.screenRow) | (0<<14);
    shadowOAM[9].attr1 = (0x1FF & star.screenCol) | (0<<14);
    shadowOAM[9].attr2 = ((0)<<12) | ((9)*32+(4));
}

void checkCollision1() {

    if (collision(player.screenRow, player.screenCol, player.height, player.width, spikes.screenRow, spikes.screenCol, spikes.height, spikes.width)) {

        player.lives--;


        jump();
        if (player.aniState == PLAYRIGHT) {
            player.aniState = PLAYLEFT;
        } else {
            player.aniState = PLAYRIGHT;
        }


        playSoundB(collideSound, 55125, 11025, 0);
    }


    if (key.activated && collision(player.screenRow, player.screenCol, player.height, player.width, key.screenRow, key.screenCol, key.height, key.width)) {

        ladder.activated = 1;
        key.activated = 0;
        playSoundB(accept, 9606, 11025, 0);
    }


    if (ladder.activated && collision(player.screenRow, player.screenCol, player.height, player.width, ladder.screenRow, ladder.screenCol, ladder.height, ladder.width)) {
        winLevel1 = 1;
    }


    if (star.activated && collision(player.screenRow, player.screenCol, player.height, player.width, star.screenRow, star.screenCol, star.height, star.width)) {
        cheat = 1;
        star.activated = 0;
        playSoundB(magic, 7698, 11025, 0);
    }
}

void checkCheat() {

    if (player.aniState == PLAYRIGHT && (!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        player.aniState = PLAYLEFT;
    }

    if (player.aniState == PLAYLEFT && (!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
        player.aniState = PLAYRIGHT;
    }
}

void initLives() {

    heart1.width = 16;
    heart1.height = 16;
    heart1.activated = 1;
    heart1.screenRow = 2;
    heart1.screenCol = 5;
    heart1.worldRow = 2;
    heart1.worldCol = 5;


    heart2.width = 16;
    heart2.height = 16;
    heart2.activated = 1;
    heart2.screenRow = 2;
    heart2.screenCol = 18;
    heart2.worldRow = 2;
    heart2.worldCol = 18;


    heart3.width = 16;
    heart3.height = 16;
    heart3.activated = 1;
    heart3.screenRow = 2;
    heart3.screenCol = 31;
    heart3.worldRow = 2;
    heart3.worldCol = 31;
}


void drawLives() {

    shadowOAM[(6)].attr0 = (0xFF & heart1.screenRow) | (0<<14);
    shadowOAM[(6)].attr1 = (0x1FF & heart1.screenCol) | (0<<14);
    shadowOAM[6].attr2 = ((0)<<12) | ((5)*32+(4));


    shadowOAM[7].attr0 = (0xFF & heart2.screenRow) | (0<<14);
    shadowOAM[7].attr1 = (0x1FF & heart2.screenCol) | (0<<14);
    shadowOAM[(7)].attr2 = ((0)<<12) | ((5)*32+(4));


    shadowOAM[8].attr0 = (0xFF & heart3.screenRow) | (0<<14);
    shadowOAM[8].attr1 = (0x1FF & heart3.screenCol) | (0<<14);
    shadowOAM[8].attr2 = ((0)<<12) | ((5)*32+(4));

    if (player.lives <= 2) {
        shadowOAM[8].attr0 = (2<<8);
    }

    if (player.lives <= 1) {
        shadowOAM[7].attr0 = (2<<8);
    }
}

void updateLives() {

    if (player.lives <= 2) {
        shadowOAM[8].attr0 = (2<<8);
    }

    if (player.lives <= 1) {
        shadowOAM[7].attr0 = (2<<8);
    }
}
