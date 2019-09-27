
//{{BLOCK(level2Screen)

//======================================================================
//
//	level2Screen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 65 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2080 + 2048 = 4640
//
//	Time-stamp: 2018-12-03, 13:54:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2SCREEN_H
#define GRIT_LEVEL2SCREEN_H

#define level2ScreenTilesLen 2080
extern const unsigned short level2ScreenTiles[1040];

#define level2ScreenMapLen 2048
extern const unsigned short level2ScreenMap[1024];

#define level2ScreenPalLen 512
extern const unsigned short level2ScreenPal[256];

#endif // GRIT_LEVEL2SCREEN_H

//}}BLOCK(level2Screen)
