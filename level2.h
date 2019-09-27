
//{{BLOCK(level2)

//======================================================================
//
//	level2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 4 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 128 + 2048 = 2688
//
//	Time-stamp: 2018-11-30, 19:23:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL2_H
#define GRIT_LEVEL2_H

#define level2TilesLen 128
extern const unsigned short level2Tiles[64];

#define level2MapLen 2048
extern const unsigned short level2Map[1024];

#define level2PalLen 512
extern const unsigned short level2Pal[256];

#endif // GRIT_LEVEL2_H

//}}BLOCK(level2)
