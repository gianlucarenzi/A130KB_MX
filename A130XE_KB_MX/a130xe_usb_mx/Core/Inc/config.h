#ifndef __CONFIG_INCLUDED__
#define __CONFIG_INCLUDED__

#	if defined( __ATARI__ )
# 		undef MATRIX_HAS_GHOST
#		include "atari_config.h"
#	elif defined ( __AMIGA__ )
#		undef MATRIX_HAS_GHOST
#		include "amiga_config.h"
#	else
#		error "PLATFORM NOT CONFIGURED"
#	endif

#define MATRIX_ROWS   KEYBOARD_ROWS
#define MATRIX_COLS   KEYBOARD_COLUMNS

#endif
