return {
  minigames = {
    thermite = {
      size = 5, -- (5, 6, 7, 8, 9, 10) size of grid by square units, ie. gridsize = 5 is a 5 * 5 (25) square grid
      squares = 4, -- number of squares to complete the game.
      rounds = 3, -- number of rounds to complete the game.
      time = 3000, -- time showing the puzzle in ms. | 1000 = 1 second
      attempts = 10 -- number of incorrect blocks after which the game will fail.
    },
    hack = {
      size = 6, -- grid size for the minigame.
      time = 30000 -- time limit for the minigame in ms. | 1000 = 1 second
    }
  },
  weapons = {
    'weapon_assaultrifle',
    'weapon_carbinerifle',
    'weapon_pumpshotgun',
    'weapon_sawnoffshotgun',
    'weapon_compactrifle',
    'weapon_autoshotgun',
    'weapon_crowbar',
    'weapon_pistol',
    'weapon_pistol_mk2',
    'weapon_combatpistol',
    'weapon_appistol',
    'weapon_pistol50',
    'weapon_microsmg',
  }
}