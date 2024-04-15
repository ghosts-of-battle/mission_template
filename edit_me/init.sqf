//== ZADE BACKPACK ON CHEST =======================================================================
/*
    When enabled, players will be able to carry two bags one on their chest and one on their back.
    Useful for if you want to have parachute insertions without restricting unit loadouts.

    You can restrict the script to certain slots to avoid people abusing it if necessary.
*/

ENABLE_ZADE_BOC = true; // Set this to true to enable backpack on chest
USE_BOC_WHITELIST = false; // Set this to true to restrict BOC only to whitelisted units
BOC_WHITELIST = ["s_1", "s_2", "s_3"]; // Add slots here you want to be able to use BOC

//== CUSTOM AI DIFFICULTY =========================================================================
/* 
    If enabled, these difficulty settings will manually overwrite the default settings assigned to units
    in the editor or via scripts.
    
    May conflict with other AI scripts that modify difficulty such as VCOM or DAC.
    
    Higher values are better, for explanation of what these values do see:
        https://community.bistudio.com/wiki/Arma_3:_AI_Skill#Sub-Skills
*/

ENABLE_CUSTOM_DIFFICULTY = false; // Set this to true to enable custom difficulty
GHOST_CUSTOM_AI_SETTINGS = [
    0.8, // Aim accuracy (lead, drop, recoil)
    0.6, // Aim steadiness
    0.8, // Aim speed
    1.0, // Spot distance
    0.6, // Spot speed
    0.6, // Courage
    0.5, // Reload speed
    0.6, // Commanding
    0.7  // General
];
