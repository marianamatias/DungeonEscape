
//{{BLOCK(menu)

//======================================================================
//
//	menu, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 160 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 5120 + 8192 = 13824
//
//	Time-stamp: 2018-12-01, 16:25:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MENU_H
#define GRIT_MENU_H

#define menuTilesLen 5120
extern const unsigned short menuTiles[2560];

#define menuMapLen 8192
extern const unsigned short menuMap[4096];

#define menuPalLen 512
extern const unsigned short menuPal[256];

#endif // GRIT_MENU_H

//}}BLOCK(menu)
