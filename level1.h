
//{{BLOCK(level1)

//======================================================================
//
//	level1, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 25 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 800 + 2048 = 3360
//
//	Time-stamp: 2018-12-01, 16:43:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL1_H
#define GRIT_LEVEL1_H

#define level1TilesLen 800
extern const unsigned short level1Tiles[400];

#define level1MapLen 2048
extern const unsigned short level1Map[1024];

#define level1PalLen 512
extern const unsigned short level1Pal[256];

#endif // GRIT_LEVEL1_H

//}}BLOCK(level1)
