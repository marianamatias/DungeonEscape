
//{{BLOCK(bg)

//======================================================================
//
//	bg, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 196 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 6272 + 2048 = 8352
//
//	Time-stamp: 2018-11-12, 18:54:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG_H
#define GRIT_BG_H

#define bgTilesLen 6272
extern const unsigned short bgTiles[3136];

#define bgMapLen 2048
extern const unsigned short bgMap[1024];

#define bgPalLen 32
extern const unsigned short bgPal[16];

#endif // GRIT_BG_H

//}}BLOCK(bg)
