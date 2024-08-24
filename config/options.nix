_: {
  clipboard.providers.wl-copy.enable = true;

  opts = {
    # Colors
    termguicolors = true;

    # Cursor and scrolling
    colorcolumn = "100";
    cursorcolumn = false;
    cursorline = false;
    scrolloff = 8;
    signcolumn = "yes";

    # File management
    backup = false;
    encoding = "utf-8";
    fileencoding = "utf-8";
    swapfile = false;
    undofile = true;

    # Folding
    foldcolumn = "0";
    foldenable = true;
    foldlevel = 99;
    foldlevelstart = 99;

    # Indentation
    autoindent = true;
    shiftwidth = 4;
    smartindent = true;
    # Enable smart indenting (see https://stackoverflow.com/questions/1204149/smart-wrap-in-vim)
    breakindent = true;

    expandtab = true;
    softtabstop = 4;
    tabstop = 4;

    # Line numbers
    number = true;
    relativenumber = true;

    # Modeline
    modeline = true;
    modelines = 100;

    # Mouse control
    mouse = "a";

    # Performance settings
    updatetime = 50; # faster completion (4000ms default)

    # Search settings
    hlsearch = true;
    ignorecase = true;
    inccommand = "split"; # Search and replace: preview changes in quickfix list
    incsearch = true;
    smartcase = true;

    # Spell checking
    spell = false;

    # Split settings
    splitbelow = true;
    splitright = true;

    # Status line
    laststatus = 3;
    showmode = false;
    cmdheight = 0;

    # Text width
    textwidth = 0;

    # Text wrapping
    wrap = false;
  };
}
