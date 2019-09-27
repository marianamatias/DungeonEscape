// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 256

// Variables
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE player;

extern int winGame;
extern int winLevel1;
extern int inLevel1;
extern int inLevel2;
extern int cheat;

// Prototypes
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


///Level1 prototypes
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

//Lives
void initLives();
void drawLives();
