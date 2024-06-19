local colors = {}

colors.get_colors = function()

    local mycolors = {} ---@type table<string,string>

    if vim.o.background == 'light' then

        mycolors = {

            None = 'NONE',
            Front = '#000000',
            Back = '#FFFFFF',
            White = '#FFFFFF',
            Black = '#000000',

            TabCurrent = '#FFFFFF',
            TabOther = '#BFBFBF',
            TabOutside = '#E4E4E4',

            LeftDark = '#E4E4E4',
            LeftMid = '#BFBFBF',
            LeftLight = '#767676',

            PopupFront = '#000000',
            PopupBack = '#E4E4E4',
            PopupHighlightBlue = '#005FAF',
            PopupHighlightGray = '#585858',

            SplitLight = '#767676',
            SplitDark = '#DDDDDD',

            CursorDark = '#B2B2B2',
            CursorLight = '#000000',
            CursorLine = "#B2B2B2",
            Selection = '#005F87',
            ColorColumn = "#AF87AF",
            LineNumber = '#585858',

            DiffChange = '#FFCCCC',
            DiffChangeLight = '#FFA3A3',
            DiffAdd = '#DBE6C2',
            DiffAddLight = '#EBF1DD',
            SearchCurrent = '#A8AC94',
            Search = '#F8C9AB',

            GitAdded = '#5F8700',
            GitModified = '#D75F00',
            GitDeleted = '#AF0000',
            GitRenamed = '#008700',
            GitUntracked = '#008700',
            GitIgnored = '#767676',
            GitStageModified = '#D75F00',
            GitStageDeleted = '#AF0000',
            GitConflicting = '#D7005F',
            GitSubmodule = '#005FAF',

            Context = '#BFBFBF',
            ContextCurrent = '#767676',

            SpellBad = "#FFD7FF",

            FoldBackground = '#D7FFD7',

            -- Syntax colors
            Gray = '#585858',
            Gray40 = '#585858',
            Gray50 = '#767676',
            Gray75 = '#BFBFBF',
            Gray90 = '#E4E4E4',
            Gray95 = '#EAEAEA',
            Violet = '#875FAF',
            Blue = '#005FAF',
            DarkBlue = '#005F87',
            DisabledBlue = '#729DB3',
            LightBlue = '#99CEDC',
            Green = '#5F8700',
            DarkGreen = '#008700',
            BlueGreen = '#4EC9B0',
            LightGreen = '#008700',
            Red = '#AF0000',
            Orange = '#D75F00',
            LightRed = '#D7005F',
            YellowOrange = '#D75F00',
            Yellow = '#FFFF00',
            DarkYellow = '#FFD602',
            Pink = '#5F0087',

            -- Low contrast with default background
            DimHighlight = '#B2B2B2', -- s:cursorline (light)

        }

    else -- dark

        -- Since "light" is my default. The names here are "inverted": light is
        -- dark, black is white, etc.

        mycolors = {

            None = 'NONE',
            Front = '#B2B2B2',
            Back = '#000000',
            Black = '#FFFFFF',
            White = '#000000',

            TabCurrent = '#000000',
            TabOther = '#3A3A3A',
            TabOutside = '#121212',

            LeftDark = '#121212',
            LeftMid = '#3A3A3A',
            LeftLight = '#949494',

            PopupFront = '#B2B2B2',
            PopupBack = '#121212',
            PopupHighlightBlue = '#005FFF',
            PopupHighlightGray = '#767676',

            SplitLight = '#949494',
            SplitDark = '#444444',

            CursorDark = '#3A3A3A',
            CursorLight = '#B2B2B2',
            CursorLine = "#3A3A3A",
            Selection = '#005F87',
            ColorColumn = "#870087",
            LineNumber = '#949494',

            DiffChange = '#4B1818',
            DiffChangeLight = '#6F1313',
            DiffAdd = '#373D29',
            DiffAddLight = '#4B5632',
            SearchCurrent = '#515C6A',
            Search = '#613315',

            GitAdded = '#5F8700',
            GitModified = '#AFAF00',
            GitDeleted = '#AF0000',
            GitRenamed = '#5FAF5F',
            GitUntracked = '#5FAF5F',
            GitIgnored = '#767676',
            GitStageModified = '#AFAF00',
            GitStageDeleted = '#AF0000',
            GitConflicting = '#D75F87',
            GitSubmodule = '#005FFF',

            Context = '#3A3A3A',
            ContextCurrent = '#949494',

            SpellBad = "#5F005F",

            FoldBackground = '#1C1C1C',

            -- Syntax colors
            Gray = '#949494',
            Gray40 = "#949494",
            Gray50 = "#767676",
            Gray75 = "#3A3A3A",
            Gray90 = "#121212",
            Gray95 = "#101010",
            Violet = '#875FAF',
            Blue = '#005FFF',
            DarkBlue = '#223E55',
            MediumBlue = '#18A2FE',
            DisabledBlue = '#729DB3',
            LightBlue = '#D787D7',
            Green = '#5F8700',
            DarkGreen = '#5FAF5F',
            BlueGreen = '#4EC9B0',
            LightGreen = '#5FAF5F',
            Red = '#AF0000',
            Orange = '#D75F00',
            LightRed = '#D75F87',
            YellowOrange = '#AFAF00',
            Yellow = '#AFAF00',
            DarkYellow = '#FFD602',
            Pink = '#5F005F',

            -- Low contrast with default background
            DimHighlight = '#3A3A3A',

        }

    end

    -- Other ui specific colors
    mycolors.UiBlue = '#084671'
    mycolors.UiOrange = '#F28B25'
    mycolors.PopupHighlightLightBlue = '#D7EAFE'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('goerz.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors

end

return colors
