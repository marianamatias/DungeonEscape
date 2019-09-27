# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 34 "main.c"
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
# 35 "main.c" 2
# 1 "game.h" 1





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
# 36 "main.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 37 "main.c" 2


# 1 "level1.h" 1
# 22 "level1.h"
extern const unsigned short level1Tiles[400];


extern const unsigned short level1Map[1024];


extern const unsigned short level1Pal[256];
# 40 "main.c" 2
# 1 "level2.h" 1
# 22 "level2.h"
extern const unsigned short level2Tiles[64];


extern const unsigned short level2Map[1024];


extern const unsigned short level2Pal[256];
# 41 "main.c" 2
# 1 "level1Screen.h" 1
# 22 "level1Screen.h"
extern const unsigned short level1ScreenTiles[1088];


extern const unsigned short level1ScreenMap[1024];


extern const unsigned short level1ScreenPal[256];
# 42 "main.c" 2
# 1 "level2Screen.h" 1
# 22 "level2Screen.h"
extern const unsigned short level2ScreenTiles[1040];


extern const unsigned short level2ScreenMap[1024];


extern const unsigned short level2ScreenPal[256];
# 43 "main.c" 2
# 1 "menu.h" 1
# 22 "menu.h"
extern const unsigned short menuTiles[2560];


extern const unsigned short menuMap[4096];


extern const unsigned short menuPal[256];
# 44 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[2768];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 45 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[7328];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 46 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[2752];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 47 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[7504];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 48 "main.c" 2


# 1 "brickWall.h" 1
# 21 "brickWall.h"
extern const unsigned short brickWallTiles[160];


extern const unsigned short brickWallMap[2048];
# 51 "main.c" 2


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
# 54 "main.c" 2
# 1 "gameSong.h" 1
# 20 "gameSong.h"
extern const unsigned char gameSong[255301];
# 55 "main.c" 2
# 1 "menuSong.h" 1
# 20 "menuSong.h"
extern const unsigned char menuSong[132068];
# 56 "main.c" 2


void initialize();


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


enum {MENU, INSTRUCTIONS, LEVEL1SCREEN, LEVEL1, LEVEL2SCREEN, LEVEL2, PAUSE, WIN, LOSE};
int state;


unsigned short buttons;
unsigned short oldButtons;


int winLevel1 = 0;
int winGame = 0;
int inLevel1 = 0;
int inLevel2 = 0;

SOUND soundA;
SOUND soundB;

int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


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


void initialize() {

    setupSounds();
    setupInterrupts();

    (*(unsigned short *)0x4000000) = 0;


    goToMenu();


    DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768/2);
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512/2);
    hideSprites();




    (*(unsigned short *)0x4000000) = 0 | (1<<8);
}


void goToMenu() {
    stopSound();
    playSoundA(menuSong, 132068, 11025, 1);


    DMANow(3, menuPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, menuTiles, &((charblock *)0x6000000)[0], 5120 / 2);
    DMANow(3, menuMap, &((screenblock *)0x6000000)[26], 8192 / 2);
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((26)<<8) | (0<<14);


    (*(unsigned short *)0x4000000) = 0 | (1<<8);

    state = MENU;
}

void goToInstructions() {

    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 5536);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<14);


    state = INSTRUCTIONS;
}

void goToLevel1Screen() {

    DMANow(3, level1ScreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, level1ScreenTiles, &((charblock *)0x6000000)[0], 2176);
    DMANow(3, level1ScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<14);

    state = LEVEL1SCREEN;
}


void goToLevel1() {
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512 / 2);



    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10) | (1<<12);


    DMANow(3, level2Pal, ((unsigned short *)0x5000000), 512 / 2);

    hOff = 0;


    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);


    DMANow(3, level1Tiles, &((charblock *)0x6000000)[0], 800);


    DMANow(3, level1Map, &((screenblock *)0x6000000)[31], 2048 / 2);


    (*(volatile unsigned short*)0x400000C) = (1<<14) | ((1)<<2) | ((29)<<8);


    DMANow(3, brickWallTiles, &((charblock *)0x6000000)[1], 320);


    DMANow(3, brickWallMap, &((screenblock *)0x6000000)[29], 4096 / 2);

    state = LEVEL1;
}

void goToLevel2Screen() {
    (*(unsigned short *)0x4000000) = 0 | (1<<8);


    DMANow(3, level2ScreenPal, ((unsigned short *)0x5000000), 256);
    DMANow(3, level2ScreenTiles, &((charblock *)0x6000000)[0], 2080);
    DMANow(3, level2ScreenMap, &((screenblock *)0x6000000)[31], 2048 / 2);
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<14);

    state = LEVEL2SCREEN;
}



void goToLevel2() {
    DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 512/2);



    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<10) | (1<<12);


    DMANow(3, level2Pal, ((unsigned short *)0x5000000), 512 / 2);

    hOff = 0;


    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((31)<<8) | (0<<14);


    DMANow(3, level2Tiles, &((charblock *)0x6000000)[0], 128);


    DMANow(3, level2Map, &((screenblock *)0x6000000)[31], 2048/2);


    (*(volatile unsigned short*)0x400000C) = (1<<14) | ((1)<<2) | ((29)<<8);


    DMANow(3, brickWallTiles, &((charblock *)0x6000000)[1], 320);


    DMANow(3, brickWallMap, &((screenblock *)0x6000000)[29], 4096 / 2);

    state = LEVEL2;
}

void goToPause() {
    hideSprites();


    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[0], 14656 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<14);

    (*(unsigned short *)0x4000000) = 0 | (1<<8);

    state = PAUSE;
}

void goToWin() {

    DMANow(3, winPal, ((unsigned short *)0x5000000), 512);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 5504 / 2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<14);

    (*(unsigned short *)0x4000000) = 0 | (1<<8);

    state = WIN;
}

void goToLose() {

    DMANow(3, losePal, ((unsigned short *)0x5000000), 512);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 15008 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[29], 2048 / 2);
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((29)<<8) | (0<<14);

    (*(unsigned short *)0x4000000) = 0 | (1<<8);

    state = LOSE;
}


void menu() {

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToLevel1Screen();
    }


    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToInstructions();
    }
}

void instructions() {

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToLevel1Screen();
    }
}

void level1Screen() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        initLevel1();
        goToLevel1();
    }
}


void level1() {
    updateLevel1();
    waitForVBlank();
    drawLevel1();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        pauseSound();
        goToPause();
    }


    if (winLevel1) {
        goToLevel2Screen();
    }


    if (player.lives <= 0) {
        goToLose();
    }
}

void level2Screen() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        initLevel2();
        goToLevel2();
    }
}


void level2() {
    updateLevel2();
    waitForVBlank();
    drawLevel2();


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        pauseSound();
        goToPause();
    }


    if (winGame) {
        goToWin();
    }


    if (player.lives <= 0) {
        goToLose();
    }
}

void pause() {

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) && inLevel1) {
        unpauseSound();
        goToLevel1();
    }


    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) && inLevel2) {
        unpauseSound();
        goToLevel2();
    }


    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToMenu();
    }
}

void win() {

    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToMenu();
    }
}

void lose() {

    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToMenu();
    }

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        initLevel1();
        goToLevel1();
    }
}
