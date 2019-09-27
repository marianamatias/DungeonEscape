
//{{BLOCK(level1Screen)

//======================================================================
//
//	level1Screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 68 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2176 + 2048 = 4736
//
//	Time-stamp: 2018-12-03, 13:55:07
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1SCREEN_H
#define GRIT_LEVEL1SCREEN_H

#define level1ScreenTilesLen 2176
extern const unsigned short level1ScreenTiles[1088];

#define level1ScreenMapLen 2048
extern const unsigned short level1ScreenMap[1024];

#define level1ScreenPalLen 512
extern const unsigned short level1ScreenPal[256];

#endif // GRIT_LEVEL1SCREEN_H

//}}BLOCK(level1Screen)
