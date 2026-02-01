--- Filter Title: Ning's Filter
--- Filter Type: Loot Filter for D2R Reimagined
--- Filter Description: Loot Filter for D2R Reimagined

return {-- The below settings are all optional, default/false entries will be assumed for anything not included

    reload = "{pink}Ning's Filter {grey} 02/01/26 {Green}reloaded.", --Allows you to specify a custom message when reloading the filter in-game
    debug = false, --Allows you to toggle Debug Mode on/off, which displays rule matching logic in-game for each item
    language = "enUS", --Allows you to set the filter language to one of the 13 currently supported languages
    filter_titles = {"Mid-Game", "End-Game"}, --Allows you to specify the text displayed for varying filter 'levels'
    filter_level = 1, --Indicates your currently active filter level, normally controlled via D2RLAN hotkey
    allowOverrides = true, --Allows a mod author (or another filter) to include default/added rules to your loot filter

    --Begin Loot Filter Operations
    rules = {
        
    }
}