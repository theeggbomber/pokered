; this function temporarily makes the starters (and Ivysaur) owned
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex:
	ld a, 1 << (DEX_Venusaur - 1) | 1 << (DEX_IVYSAUR - 1) | 1 << (DEX_CHARIZARD - 1) | 1 << (DEX_BLASTOISE - 1)
	ld [wPokedexOwned], a
	predef ShowPokedexData
	xor a
	ld [wPokedexOwned], a
	ret
