
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

const unsigned short bgTiles[3136] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0800,0x0000,0x0800,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x8800,0x8000,0x8800,0x8000,0x0000,0x0088,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0008,0x0088,0x0008,0x0088,0x0880,0x0800,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0200,0x0000,0x0200,0x0000,0x8000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x2800,0x8000,0x2800,0x8000,0x0008,0x0088,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0008,0x0000,0x0008,0x0000,0x0880,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0880,0x8800,0x0880,0x8800,0x8000,0x0008,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0088,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0082,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0820,0x8200,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2800,0x8008,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0002,0x0028,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0820,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8280,0x2800,
	0x8800,0x8008,0x8200,0x2022,0x0000,0x0022,0x0000,0x0888,
	0x8200,0x2822,0x8000,0x2C20,0xCB00,0x1CC1,0x1800,0xCCCC,

	0x0088,0x0888,0x0228,0x2282,0x0220,0x2200,0x0880,0x8800,
	0x0220,0x2282,0xCC20,0xC208,0xCC11,0xC111,0xC7DD,0x7DD7,
	0x0880,0x8800,0x0220,0x2280,0x8880,0x8802,0x2888,0x8882,
	0x2888,0x8882,0x2C22,0x8CCC,0xCC11,0x1CCC,0xD7CC,0x44CC,
	0x8008,0x0080,0x2800,0x8828,0x0028,0x0828,0x0022,0x0888,
	0x8822,0x8228,0x01B2,0xBC10,0x1CCC,0xCCC1,0x4CCC,0xCCDD,
	0x0808,0x0088,0x8282,0x0828,0x8280,0x2888,0x8880,0x2282,
	0x8228,0x2288,0xC100,0xC00B,0xCC11,0xC111,0xC4D4,0x4D4C,

	0x8880,0x8800,0x8280,0x8200,0x8888,0x0082,0x2088,0x0082,
	0x2088,0x0282,0xBC01,0xC8EE,0xCC1C,0xC1CC,0x4CCC,0xCCC4,
	0x8008,0x0008,0x2022,0x0228,0x0022,0x0220,0x0088,0x0880,
	0x2822,0x0228,0xBC1B,0x8888,0xCCCC,0x8111,0xCC7D,0x08CC,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x8808,0x0000,0x2808,0x0008,0x8888,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0828,0x0280,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0880,0x8200,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x2000,0x0008,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0280,0x2800,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x8000,0x0000,0x2000,
	0x0000,0x8000,0x0000,0x2000,0x0000,0x8000,0x0000,0x0000,

	0x0000,0x0088,0x0000,0x8800,0x0008,0x0088,0x0082,0x2288,
	0x8288,0x8800,0x8220,0x2880,0x8880,0x2822,0x0000,0xCB72,
	0x0080,0x0800,0x8000,0x0000,0x0880,0x8200,0x0220,0x8200,
	0x8880,0x8002,0x2820,0x8002,0x8288,0x8222,0xBC2B,0x27CC,
	0x8000,0x0000,0x0008,0x0088,0x8000,0x8008,0x2882,0x8002,
	0x8082,0x8288,0x8828,0x2228,0x8288,0x8228,0x0C12,0x2710,
	0x0008,0x0088,0x0880,0x8800,0x0088,0x0888,0x0082,0x0828,
	0x2288,0x2888,0x2228,0x2282,0x2828,0x2288,0x7E11,0x1110,

	0x0000,0x0000,0x0000,0x0000,0x8880,0x0000,0x8280,0x0000,
	0x8888,0x8882,0x2822,0x0082,0x8082,0x0088,0x0217,0x8802,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x2000,0x0008,0x8000,0x0000,0x0088,0x0880,0x8080,0x0008,
	0x0000,0x0080,0x0000,0x2000,0x0000,0x0880,0x0000,0x2820,
	0x0000,0x2000,0x0000,0x8800,0x0000,0x8880,0x0088,0x2220,
	0x0800,0x8000,0x0000,0x0008,0x8800,0x8000,0x2202,0x2800,
	0x8808,0x8828,0x8882,0x8822,0x2882,0x2228,0xCB21,0xCCCB,

	0x0000,0x0000,0x0088,0x0000,0x8008,0x0088,0x8008,0x0082,
	0x8228,0x2288,0x2222,0x2228,0x2288,0x2280,0x1120,0xCC00,
	0x0088,0x0880,0x8800,0x8000,0x0028,0x8880,0x2888,0x8288,
	0x2800,0x8888,0x2800,0x2828,0x8822,0x8822,0xB01C,0x01CC,
	0xC180,0x447C,0xCC28,0x66DC,0xCC20,0x57DC,0xC120,0x546D,
	0xC882,0x54D7,0xCB82,0x54DC,0x1128,0x54DC,0x0B1B,0x54D1,
	0x4D66,0xD66D,0x6666,0x6666,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0x6444,0x6D44,0x6666,0x6666,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x6444,0x4766,0x6666,0x6666,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4666,0x6667,0x6666,0x6666,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x6444,0x744D,0x6666,0x6666,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0x44D6,0x8CCC,0x6666,0xBCCC,0x6755,0x21C1,0x6755,0x0276,
	0x6755,0x8276,0x6755,0xBCCD,0x6755,0xB11C,0x6755,0x120C,
	0x8282,0x0000,0x8888,0x0000,0x0088,0x0820,0x2282,0x2820,
	0x8200,0x2800,0x2880,0x8800,0x8882,0x2882,0x1227,0xB00C,
	0x0000,0x0000,0x0000,0x0000,0x8200,0x8800,0x8208,0x2882,
	0x8008,0x8882,0x8002,0x8222,0x8822,0x8822,0x00CC,0x0271,
	0x0000,0x0000,0x0000,0x0000,0x0008,0x0000,0x0008,0x0000,
	0x0228,0x0000,0x0222,0x0000,0x0888,0x0000,0x8000,0x0088,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0028,0x0000,0x0080,0x0000,0x8800,0x0000,0x8028,0x8880,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8200,0x2000,0x0800,0x8000,0x0000,0x0088,0x8800,0x8000,
	0x0000,0x0008,0x0000,0x0200,0x0000,0x0088,0x0000,0x2282,
	0x0008,0x8200,0x0000,0x2880,0x0080,0x8888,0x0008,0x0000,
	0x0080,0x0800,0x8000,0x8000,0x0880,0x0200,0x0220,0x8280,
	0x8880,0x8002,0x2888,0x8002,0x2888,0x2282,0xB00B,0xCB27,

	0x0000,0x0000,0x0008,0x0000,0x2800,0x8000,0x2882,0x8828,
	0x0082,0x8828,0x0022,0x2828,0x2828,0x2222,0x187B,0xCC11,
	0x0000,0x0000,0x0000,0x0000,0x0088,0x0888,0x0082,0x0828,
	0x8288,0x2888,0x8228,0x2282,0x2888,0x8882,0xCB01,0xB01C,
	0x0880,0x8800,0x8000,0x0008,0x0880,0x8800,0x2880,0x8802,
	0x8008,0x0002,0x8008,0x8082,0x8822,0x2888,0x8BCC,0x72EB,
	0x8000,0x0008,0x0088,0x0080,0x8000,0x0008,0x2022,0x0228,
	0x0088,0x0820,0x0028,0x8288,0x2828,0x2282,0x2BCB,0xCCB7,

	0x0008,0x0080,0x0800,0x8000,0x0088,0x0880,0x0022,0x0228,
	0x2888,0x8888,0x2288,0x2888,0x2288,0x8288,0x7B00,0xBCB2,
	0x0800,0x8800,0x8000,0x0008,0x8800,0x2800,0x8280,0x8800,
	0x8882,0x0022,0x2822,0x0022,0x8822,0x8822,0x001C,0x00C1,
	0x0000,0x0000,0x0088,0x0000,0x0000,0x0000,0x0028,0x0000,
	0x0028,0x0000,0x0028,0x0000,0x0088,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x8000,
	0x0000,0x2000,0x0000,0xC000,0x0000,0x1000,0x0000,0xC000,

	0xCB00,0xCCCC,0xC1B0,0x76CC,0xD410,0xD6DD,0x6D12,0xAAAA,
	0xADCC,0x5555,0xADCC,0x5555,0xA66C,0x5555,0xA64C,0x5555,
	0xCCCC,0xCCCC,0x6CCC,0xD4C7,0x6DDD,0x6DDD,0xAAAA,0x44AA,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0x4CCC,0xCCD6,0x6DDD,0xDD66,0x4444,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0xCD4C,0xD4CC,0xD6DD,0x66DD,0x4444,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0xCCCC,0x882C,0xCCCC,0x008B,0xCCDD,0x00BC,0x176D,0x28BE,
	0xB765,0xC8B2,0xCC65,0xCCCC,0x4665,0xCCCC,0x6665,0xDDDD,
	0x2022,0x0082,0x8088,0x8288,0x2828,0x8220,0x8228,0x2B80,
	0x2CC1,0xC728,0xCCCC,0xCCCC,0xCC4D,0xC466,0xDD66,0xD666,
	0x0022,0xCC10,0x2888,0xCC20,0x2282,0xCCC2,0x8882,0xC1EB,
	0x12BC,0xC221,0xCCCC,0x1CCC,0xCC67,0x6CCC,0xDD66,0x6DDD,
	0xCCCC,0xCCCC,0x7CCC,0x4CC6,0xDDDD,0x6DD6,0x44D6,0x4444,
	0x55E6,0x5555,0x55C6,0x5555,0x55C6,0x5555,0x55C6,0x5555,

	0xCCCC,0xCCCC,0xCCCD,0xCDDD,0xDDD6,0xD666,0x4444,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0xC4DC,0x7DCC,0xDD6D,0xD6DD,0x4444,0x4446,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0x54DC,0xCCCC,0x546D,0xDDDD,0x5466,0x4444,0x5744,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0x6755,0xCCC1,0x6755,0xCCC6,0x6755,0xDDD6,0x4C55,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0xCCD7,0x664C,0xDD6D,0x66DD,0x4444,0x4446,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0x2CCC,0x64CC,0x1CCD,0x66DD,0x7DD6,0x4444,0x4644,
	0x5555,0x4655,0x5555,0x4655,0x5555,0x6655,0x5555,0x6655,
	0x8000,0x0082,0x8002,0x8288,0x200B,0x8228,0x200B,0x2882,
	0xC12B,0xCB0C,0xCCCC,0xCCCC,0xCCCD,0xCC4D,0xDDD6,0xDD66,

	0x2888,0x8228,0x8800,0x8888,0x2800,0x2828,0x2882,0x8222,
	0xC28B,0x21CC,0xCCCC,0xCCCC,0xD6DC,0x76CC,0x666D,0x66DD,
	0x2200,0x2008,0x8882,0x8828,0x0282,0x2822,0x0828,0x88B8,
	0x82C1,0x2B72,0xCCCC,0xCCCC,0x6CCC,0xCC46,0x6DDD,0xDD66,
	0x0002,0x1000,0x0288,0xC180,0x0228,0xDC80,0x8282,0x6C80,
	0x1CE7,0x6C2B,0xCCCC,0x61CC,0xC76C,0x66CC,0xD66D,0x66DD,
	0xCCCC,0xCCCC,0xD64C,0x7CCC,0x666D,0xDDDD,0x444D,0x4444,
	0x555E,0x5555,0x555C,0x5555,0x555C,0x5555,0x555C,0x5555,

	0xCCCC,0xCCCC,0xCCCD,0xCCD4,0xDDD6,0xDD66,0x4444,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0xCC4D,0xC7DC,0xDDD6,0xDD6D,0x4444,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0x76CC,0xCCCC,0xD6DD,0xDDDD,0x4444,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0xCCCC,0xCC7D,0xC76C,0xDDD6,0xDD6D,0x4444,0x4444,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0xCCCC,0xCCCC,0xC664,0x67CC,0xD66D,0x6DDD,0x4444,0xAAAA,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xCCCC,0x2CCC,0xD4CC,0x1CCD,0x66DD,0x7DD6,0xAAAA,0x46AA,
	0x5555,0x4655,0x5555,0x6655,0x5555,0x6655,0x5555,0xD655,
	0x0000,0x0000,0x0002,0x0000,0x000B,0x0000,0x0021,0x0000,
	0x001C,0x0000,0x001D,0x0000,0x001D,0x0000,0x00C7,0x0000,
	0x0000,0xB000,0x0000,0x2000,0x0000,0xC000,0x0000,0x1000,
	0x0000,0xC000,0x0000,0xC000,0x0000,0x2000,0x0000,0x8000,

	0xADCC,0x5555,0xADCC,0x5555,0xADCC,0x5555,0xA66C,0x5555,
	0x7D7C,0x5555,0x7DCC,0x5555,0x767C,0x5555,0x766C,0x5555,
	0x7775,0x7777,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x7777,0x7777,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x55E7,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,

	0x5555,0x7755,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x555E,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x4655,0x5555,0x4655,0x5555,0x4655,0x5555,0x6655,
	0x5555,0xD655,0x5555,0x4655,0x5555,0xD655,0x5555,0x6655,
	0x00CC,0x0000,0x001C,0x0000,0x00CC,0x0000,0x00CD,0x0000,
	0x00C7,0x0000,0x00CC,0x0000,0x0017,0x0000,0x001D,0x0000,

	0x0000,0xB000,0x0000,0xC000,0x0000,0xC000,0x0000,0x8000,
	0x0000,0x8000,0x0000,0xB000,0x0000,0xC000,0x0000,0xC000,
	0x766C,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,0x764C,0x5555,
	0x766C,0x5555,0x766C,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,
	0x5555,0x6655,0x5555,0x4655,0x5555,0x4655,0x5555,0xD655,
	0x5555,0x6655,0x5555,0x7655,0x5555,0x4655,0x5555,0x7655,
	0x001D,0x0000,0x00C7,0x0000,0x00CC,0x0000,0x00C7,0x0000,
	0x0014,0x0000,0x00CC,0x0000,0x00CC,0x0000,0x00CC,0x0000,

	0x0000,0xC000,0x0000,0x2000,0x0000,0xB000,0x0000,0x1000,
	0x0000,0x1000,0x0000,0x8000,0x0000,0x8000,0x0000,0x1000,
	0x764C,0x5555,0x76DC,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,
	0x7DCC,0x5555,0x76DC,0x5555,0x766C,0x5555,0x76DC,0x5555,
	0x5555,0xD655,0x5555,0x6655,0x5555,0x6655,0x5555,0x7655,
	0x5555,0x7655,0x5555,0x6655,0x5555,0x6655,0x5555,0x6655,
	0x0017,0x0000,0x001D,0x0000,0x00CD,0x0000,0x00CC,0x0000,
	0x00CC,0x0000,0x0014,0x0000,0x001D,0x0000,0x00C4,0x0000,

	0x0000,0xC000,0x0000,0xC000,0x0000,0x1000,0x0000,0x0000,
	0x0000,0xB000,0x0000,0xC000,0x0000,0xC000,0x0000,0x1000,
	0x7DCC,0x5555,0x7DCC,0x5555,0x76DC,0x5555,0x764C,0x5555,
	0x7DCC,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,0x766C,0x5555,
	0x5555,0x7655,0x5555,0x7655,0x5555,0x6655,0x5555,0x6655,
	0x5555,0x6655,0x5555,0x7655,0x5555,0x4655,0x5555,0x7655,
	0x00CC,0x0000,0x00CC,0x0000,0x0014,0x0000,0x001D,0x0000,
	0x00C4,0x0000,0x00CC,0x0000,0x001C,0x0000,0x00CC,0x0000,

	0x0000,0x8000,0x0000,0xE000,0x0000,0xC000,0x0000,0xC000,
	0x0000,0xE000,0x0000,0x2000,0x0000,0x1000,0x0000,0xC000,
	0x767C,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,
	0x766C,0x5555,0x7D7C,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,
	0x5555,0x6655,0x5555,0xD655,0x5555,0x7655,0x5555,0x4655,
	0x5555,0x6655,0x5555,0xD655,0x5555,0x4655,0x5555,0x4655,
	0x00C4,0x0000,0x00C4,0x0000,0x00CC,0x0000,0x00CC,0x0000,
	0x00CD,0x0000,0x0017,0x0000,0x00CC,0x0000,0x00CC,0x0000,

	0x0000,0x2000,0x0000,0x8000,0x0000,0x2000,0x0000,0xC000,
	0x0000,0xC000,0x0000,0x2000,0x0000,0x8000,0x0000,0xB000,
	0x7DCC,0x5555,0x766C,0x5555,0x766C,0x5555,0x764C,0x5555,
	0x7DCC,0x5555,0x7D7C,0x5555,0x766C,0x5555,0x766C,0x5555,
	0x5555,0x4655,0x5555,0x6655,0x5555,0x4655,0x5555,0x4655,
	0x5555,0x4655,0x5555,0x4655,0x5555,0x6655,0x5555,0x6655,
	0x00CC,0x0000,0x001D,0x0000,0x001C,0x0000,0x00CC,0x0000,
	0x00CC,0x0000,0x0017,0x0000,0x001D,0x0000,0x001D,0x0000,

	0x0000,0xC000,0x0000,0xC000,0x0000,0xC000,0x0000,0x2000,
	0x0000,0x2000,0x0000,0x1000,0x0000,0xB000,0x0000,0xB000,
	0x7D7C,0x5555,0x7DCC,0x5555,0x767C,0x5555,0x766C,0x5555,
	0x7DCC,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,0x7DCC,0x5555,
	0x5555,0x5555,0x7775,0x7777,0x666E,0xDDDD,0x766E,0xCCCC,
	0xCC6E,0xCCCC,0x276E,0x72B2,0x1C6E,0x202B,0x7D6E,0x020B,
	0x5555,0x5555,0x7777,0x7777,0x6666,0x6666,0x7C46,0xC766,
	0xCCCC,0xCCCC,0x2CC1,0xCCB8,0x8228,0x2B80,0x2822,0x8228,

	0x5555,0x5555,0x7777,0x7777,0x6666,0x6666,0x7667,0x664C,
	0xCCCC,0xCCCC,0xCB82,0xE82C,0xB288,0x2802,0x2282,0x2888,
	0x5555,0x5555,0x7777,0x7777,0x66D6,0xDDDD,0xDDCC,0xCCCC,
	0xCCCC,0xCCCC,0x2CCC,0x21CB,0x822B,0x2028,0x2882,0x1222,
	0x5555,0x5555,0x5777,0x5555,0x5666,0x5555,0x5664,0x5555,
	0x567C,0x5555,0x567B,0x5555,0x5671,0x5555,0x567C,0x5555,
	0x5555,0xD655,0x5555,0x4655,0x5555,0xD655,0x5555,0x6655,
	0x5555,0x6655,0x5555,0x4655,0x5555,0x4655,0x5555,0x4655,

	0x00C7,0x0000,0x00CC,0x0000,0x0017,0x0000,0x001D,0x0000,
	0x001D,0x0000,0x00C7,0x0000,0x001C,0x0000,0x001C,0x0000,
	0x0000,0xC000,0x0000,0x1000,0x0000,0xC000,0x0000,0xC000,
	0x0000,0x1000,0x0000,0x2000,0x0000,0xB000,0x0000,0x0000,
	0x7D7C,0x5555,0x766C,0x5555,0x7DCC,0x5555,0x6DCC,0xDDDD,
	0xD4CC,0xD64D,0xCCCC,0x7DCC,0xCCCC,0xCCCC,0xBB82,0xCB72,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDDD,0xDDDD,
	0x66DD,0x6DDD,0xDD7C,0xD4C7,0xC11C,0x1CCC,0xB087,0x27C7,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x66DD,0x6666,
	0xDDD4,0xDD6D,0xCCCC,0xCCD7,0xCCCC,0xCCCC,0xB212,0x84BC,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x6666,0x6666,
	0xD6DD,0xDD6D,0xCD4C,0xC4DC,0xCCCC,0xC1CC,0x7B11,0x20CC,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDD6,0xDDDD,
	0x664D,0x4D46,0xDDCC,0xCCC4,0x11CC,0x1CCC,0x00BC,0x0BCC,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x55DD,0x5555,
	0x5466,0x5555,0x546D,0x5555,0x54DC,0x5555,0x54D1,0x5555,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDDD,0xDDDD,
	0x4D66,0x664D,0xC466,0xDDCC,0xCC76,0x11CC,0x8276,0x00BB,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDDD,0xDDDD,
	0x6DD6,0xDDDD,0xDCC4,0x7CC7,0xCCCC,0xCCCC,0xB7C7,0x27B0,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDDD,0xDDDD,
	0xDD66,0xD46D,0xC7DD,0xCCD7,0xCC11,0xCC1C,0xC720,0xB827,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDDD,0xDDDD,
	0x66DD,0x6DDD,0xDD7C,0xD4CC,0xC11C,0x1CCC,0xB00C,0x84C7,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDDD,0xDDDD,
	0x64D4,0x4D46,0x4CCC,0xCCC4,0xCCCC,0xCCC1,0xCC12,0xC120,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0xDDDD,0xDDDD,
	0xD4D6,0x6664,0xCC4D,0x4DDC,0xCC1C,0xC11C,0xC20C,0xC00B,
	0x466E,0x880B,0x466E,0x2821,0xCC65,0x881C,0xB766,0x0082,
	0x2CD4,0x0000,0x81CC,0x0000,0x001C,0x0000,0x0001,0x0000,
	0x8828,0x0288,0x2008,0x0002,0x8000,0x0008,0x0000,0x0080,
	0x0000,0x0000,0x2000,0x0008,0x0000,0x0000,0x0000,0x0000,

	0x2888,0x8888,0x0022,0x0220,0x0088,0x0880,0x0800,0x8000,
	0x0000,0x0080,0x0082,0x0820,0x0000,0x0000,0x0000,0x0000,
	0x8882,0xC122,0x2280,0xC200,0x8800,0xCC00,0x0000,0x2208,
	0x0800,0x0000,0x8280,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5647,0x5555,0x566D,0x5555,0x567C,0x5555,0xD67B,0x5555,
	0xDD7B,0x4664,0xCC12,0xCD4C,0x1C80,0xCCCC,0x0000,0x7111,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x6664,0x64D4,0x4DDC,0xDCCC,0xC11C,0xCC1C,0xC00B,0xB701,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4D4D,0xDDD6,0xCCC4,0x7C7D,0xCCCC,0xCCCC,0x4811,0x7CCB,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xDDD6,0xD46D,0xCCCD,0xCCD7,0xCCC1,0xCC1C,0x7B82,0x1227,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x6DDD,0x664D,0xD7CC,0x44CC,0xCCCC,0x1CCC,0xBCB2,0x07CC,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xDDD4,0x446D,0xCCCC,0xCCD4,0xC1CC,0xCCCC,0x1012,0xC7B1,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xD4D6,0x664D,0xCC7D,0x4DCC,0xCC1C,0xCCC1,0x1201,0x1EC0,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x64D4,0x6DDD,0xDCCC,0x67C4,0xCC1C,0x1CCC,0xB701,0xB7C1,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xDDDD,0xDD6D,0xCCCC,0xC7DC,0xCCCC,0xCCCC,0x2BB8,0x2CB7,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xD6DD,0x66DD,0xC67C,0xDD4C,0xCCCC,0xC11C,0xC2C2,0xE00C,

	0x5555,0xD655,0x5555,0x6655,0x5555,0x4655,0x5555,0x4655,
	0xDDD4,0x7D46,0x7CCC,0xCCCD,0xCCCC,0xCCCC,0x1E27,0x2C7B,
	0x00C7,0x0000,0x00CD,0x0000,0x00CC,0x0000,0x00CC,0x0000,
	0x00CC,0x0000,0x00BC,0x0000,0x00C1,0x0000,0x0020,0x0000,
	0x0000,0x8000,0x0000,0x2000,0x0000,0x8000,0x0000,0x2000,
	0x0000,0x8000,0x0000,0x0000,0x0000,0x8000,0x0000,0x8000,
	0x8880,0x2828,0x8220,0x2282,0x8288,0x2888,0x0082,0x0022,
	0x0008,0x0088,0x0880,0x8800,0x0008,0x0088,0x0008,0x0082,

	0x2888,0x8882,0x2888,0x8882,0x8880,0x8802,0x0220,0x2200,
	0x0880,0x8800,0x2000,0x0000,0x0880,0x0800,0x0820,0x8200,
	0x8828,0x8222,0x8822,0x8228,0x8828,0x8288,0x2800,0x8002,
	0x8000,0x0008,0x0008,0x0088,0x8000,0x8000,0x2800,0x8000,
	0x2228,0x8888,0x2228,0x2282,0x2288,0x2888,0x0082,0x0828,
	0x0088,0x0888,0x0880,0x8800,0x0008,0x8200,0x0002,0x0000,
	0x8082,0x1082,0x2822,0xC122,0x8888,0xC122,0x8280,0xC100,
	0x8880,0xCC20,0x8000,0xCE88,0x0880,0xC000,0x0288,0xC000,

	0x54DC,0x5555,0x54DC,0x5555,0x54D4,0x5555,0x546D,0x5555,
	0x54DC,0x5555,0x54DC,0x5555,0x546D,0x5555,0x5466,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x2555,
	0x1C76,0x808B,0xB466,0x2820,0xB466,0x8880,0xC466,0x8281,
	0xCC76,0x8801,0xBC76,0x0080,0xCC76,0x0081,0xC7D6,0x802B,
	0x8822,0x8288,0x0282,0x2822,0x8882,0x8828,0x2200,0x2008,
	0x8800,0x8000,0x0008,0x0088,0x8882,0x8000,0x8808,0x2000,

	0x8220,0x2888,0x8220,0x2282,0x0288,0x2888,0x0082,0x0022,
	0x0008,0x0088,0x0880,0x0000,0x0008,0x0000,0x0008,0x0000,
	0x2888,0x8882,0x2888,0x8882,0x8880,0x8882,0x0220,0x2280,
	0x0880,0x8800,0x0000,0x8000,0x0000,0x0800,0x0000,0x8280,
	0x8828,0x8288,0x8822,0x2222,0x8828,0x8228,0x2800,0x8008,
	0x8000,0x8008,0x0008,0x0088,0x8800,0x0000,0x2800,0x0000,
	0x2888,0x2808,0x2228,0x2282,0x8288,0x2888,0x0082,0x0828,
	0x0088,0x0888,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x8082,0x0088,0x2028,0x0082,0x8888,0x0082,0x8280,0x0000,
	0x8880,0x0000,0x8000,0x0008,0x0880,0x0000,0x0880,0x0000,
	0x0000,0x0800,0x0000,0x8800,0x0000,0x8800,0x0000,0x2800,
	0x0000,0x8800,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x2228,0x2222,0x2228,0x8228,0x8288,0x8008,0x0082,
	0x8008,0x0088,0x0000,0x0880,0x8000,0x0008,0x8000,0x0002,
	0x2808,0x2888,0x2282,0x2028,0x2888,0x8888,0x0828,0x8280,
	0x0888,0x8880,0x8800,0x8000,0x0088,0x0880,0x0028,0x0880,

	0x2882,0x8822,0x0282,0x2822,0x8882,0x8028,0x2200,0x2008,
	0x8800,0x8000,0x0008,0x0088,0x8800,0x0000,0x8200,0x0000,
	0x8288,0x2888,0x8228,0x2288,0x0288,0x2888,0x0002,0x0022,
	0x0008,0x0088,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8288,0x8882,0x2888,0x8882,0x8880,0x8882,0x0220,0x8280,
	0x0880,0x8800,0x8000,0x0000,0x0080,0x0000,0x0820,0x0000,
	0x8828,0x8222,0x8222,0x2222,0x8828,0x8828,0x2800,0x8008,
	0x8800,0x8008,0x0000,0x0088,0x8800,0x8000,0x2800,0x8000,

	0x8888,0x2288,0x8228,0x2282,0x8288,0x2888,0x0082,0x0828,
	0x0088,0x0888,0x0880,0x0000,0x0008,0x0000,0x0002,0x0000,
	0x2888,0x8882,0x2028,0x0282,0x8888,0x8882,0x8220,0x2200,
	0x0880,0x8800,0x8000,0x0008,0x0880,0x8800,0x0880,0x8200,
	0x8828,0x8282,0x2822,0x8228,0x8028,0x0288,0x2008,0x0002,
	0x8000,0x0008,0x0088,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x2828,0x2888,0x2288,0x2888,0x2888,0x8888,0x0022,0x0228,
	0x0088,0x0880,0x0200,0x0000,0x0088,0x0000,0x0082,0x0000,

	0x2882,0x0822,0x2882,0x8222,0x8882,0x8822,0x8280,0x2800,
	0x8800,0x8800,0x8000,0x0008,0x0880,0x8800,0x0280,0x2800,
	0x0088,0x0000,0x0022,0x0000,0x0028,0x0000,0x0008,0x0000,
	0x0008,0x0000,0x0088,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x8800,0x0000,0x8200,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0008,0xCC20,0x0000,0xCC20,0x0880,0xCC20,0x0820,0xCE80,
	0x8808,0x1888,0x2208,0x1282,0x8800,0x8088,0x0000,0x0800,

	0x576D,0x5555,0x5ADC,0x5555,0x66DC,0x6666,0x47CC,0x7746,
	0xCCCC,0xCCCD,0xCC7B,0xC711,0x1120,0x1202,0x8822,0x0220,
	0x5555,0x5555,0x5555,0x5555,0x6666,0x6666,0x7764,0x66D7,
	0xCC47,0x447C,0xC11C,0x1BBC,0x2821,0x2001,0x2288,0x2880,
	0x5555,0x5555,0x5555,0x5555,0x6666,0x6666,0x4774,0xD776,
	0x7CCC,0x7CC4,0xC11C,0xCCCC,0xE221,0x1112,0x8882,0x8822,
	0x5555,0xA555,0x5555,0x3555,0x6666,0x6666,0x7776,0x7666,
	0xCCC4,0xC444,0x1CCB,0xCCBB,0xBB80,0x1B00,0x8228,0x8228,

	0xC466,0x282B,0xCC76,0x888C,0xCC76,0x008C,0xCCC7,0x0082,
	0xBCCC,0x8828,0xCBCC,0x2828,0x808B,0x8880,0x2288,0x0008,
	0x0002,0x0000,0x0008,0x0000,0x8808,0x0000,0x0082,0x0000,
	0x0808,0x0000,0x0882,0x0088,0x0008,0x0000,0x0000,0x0000,
	0x0000,0x0800,0x0000,0x2800,0x0000,0x2800,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8828,0x8220,0x8888,0x0882,0x2008,0x0082,0x0000,0x0080,
	0x0000,0x0080,0x2000,0x0008,0x8000,0x0008,0x0000,0x0000,

	0x2208,0x2888,0x8828,0x8880,0x0022,0x0220,0x0800,0x0000,
	0x0800,0x0000,0x0082,0x0000,0x0088,0x0000,0x0000,0x0000,
	0x8882,0x8822,0x8208,0x2888,0x2200,0x2800,0x0000,0x0008,
	0x0000,0x0008,0x8280,0x0000,0x0800,0x0000,0x0000,0x0000,
	0x8228,0x2288,0x8888,0x8882,0x8008,0x0082,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x2808,0x0008,0x8828,0x0008,0x0828,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short bgMap[1024] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0002,0x0003,0x0004,0x0005,0x0006,
	0x0007,0x0008,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0009,0x000A,0x000B,0x000C,0x0000,0x0000,0x000D,
	0x000E,0x0000,0x040A,0x000F,0x0010,0x0011,0x0012,0x0013,
	0x0014,0x0015,0x0016,0x0000,0x0000,0x0000,0x0000,0x0009,
	0x0017,0x0000,0x0000,0x0018,0x0019,0x040E,0x001A,0x0000,

	0x001B,0x001C,0x001D,0x001E,0x001F,0x0020,0x0021,0x0022,
	0x0023,0x0024,0x0025,0x0026,0x0027,0x0028,0x0029,0x002A,
	0x002B,0x002C,0x002D,0x002E,0x002F,0x0030,0x0031,0x0032,
	0x0033,0x0034,0x0035,0x0036,0x0037,0x0038,0x0039,0x003A,
	0x003B,0x003C,0x003D,0x003E,0x003F,0x0040,0x0041,0x0042,
	0x0043,0x0044,0x0045,0x0046,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0048,0x0049,0x004A,0x004B,0x004C,0x004D,0x004E,
	0x004F,0x0050,0x0051,0x0052,0x0053,0x0054,0x0055,0x0056,

	0x0057,0x0058,0x0047,0x0047,0x0047,0x0059,0x005A,0x005A,
	0x005B,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x005C,0x005A,0x005A,0x005A,0x005A,
	0x005D,0x0047,0x0047,0x0047,0x0047,0x0047,0x005E,0x005F,
	0x0060,0x0061,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0062,0x0063,

	0x0064,0x0065,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0066,0x0067,
	0x0068,0x0069,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x006A,0x006B,

	0x006C,0x006D,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x006E,0x006F,
	0x0070,0x0071,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0072,0x0073,

	0x0074,0x0075,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,
	0x0076,0x0077,0x0078,0x0079,0x007A,0x0047,0x0047,0x0047,
	0x0047,0x0047,0x0047,0x0047,0x0047,0x0047,0x007B,0x007C,
	0x007D,0x007E,0x007F,0x0080,0x0081,0x0082,0x0083,0x0047,
	0x0047,0x0047,0x0084,0x0085,0x0086,0x0087,0x0088,0x0089,
	0x008A,0x008B,0x008C,0x008D,0x008E,0x008F,0x0090,0x0091,
	0x0092,0x0093,0x0094,0x0095,0x0096,0x0097,0x0098,0x0099,

	0x009A,0x009B,0x009C,0x009D,0x009E,0x009F,0x00A0,0x0047,
	0x0047,0x00A1,0x00A2,0x00A3,0x00A4,0x00A5,0x00A6,0x00A7,
	0x00A8,0x0000,0x0000,0x00A9,0x00AA,0x00AB,0x00AC,0x00AD,
	0x00AE,0x00AF,0x00B0,0x00B1,0x00B2,0x00B3,0x00B4,0x00B5,
	0x0000,0x0000,0x0000,0x0000,0x00B6,0x00B7,0x00B8,0x00B9,
	0x00BA,0x00BB,0x00BC,0x00BD,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x00BE,0x00BF,0x00C0,
	0x00C1,0x00C2,0x00C3,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short bgPal[16] __attribute__((aligned(4)))=
{
	0x0001,0x0867,0x0024,0x3E54,0x0CCB,0x67FF,0x0D0E,0x0CAA,
	0x0002,0x4AD8,0x192C,0x0445,0x0889,0x0CEC,0x0866,0x5B3B,
};

//}}BLOCK(bg)
