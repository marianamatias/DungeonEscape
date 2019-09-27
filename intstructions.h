
//{{BLOCK(intstructions)

//======================================================================
//
//	intstructions, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 191 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6112 + 2048 = 8672
//
//	Time-stamp: 2018-12-01, 16:31:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INTSTRUCTIONS_H
#define GRIT_INTSTRUCTIONS_H

#define intstructionsTilesLen 6112
extern const unsigned short intstructionsTiles[3056];

#define intstructionsMapLen 2048
extern const unsigned short intstructionsMap[1024];

#define intstructionsPalLen 512
extern const unsigned short intstructionsPal[256];

#endif // GRIT_INTSTRUCTIONS_H

//}}BLOCK(intstructions)
