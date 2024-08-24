_: let
  #TODO: export these functions to lib
  mkKeymap = mode: key: action: desc: {
    inherit mode key action;
    options = {
      silent = true;
      noremap = true;
      inherit desc;
    };
  };

  mkModeMap = mode: key: action: desc: (mkKeymap mode key action desc);
  mkNormap = mkModeMap "n";
  mkInsmap = mkModeMap "i";
in {
  globals.mapleader = " ";

  keymaps = [
    # Disable keys
    (mkNormap "Q" "<nop>" "Prevent accidental recording of macros")
    (mkNormap "<left>" "<nop>" "Disable [Left] arrow key")
    (mkNormap "<right>" "<nop>" "Disable [Right] arrow key")
    (mkNormap "<up>" "<nop>" "Disable [Up] arrow key")
    (mkNormap "<down>" "<nop>" "Disable [Down] arrow key")

    # Normal mode mappings
    (mkNormap "<C-d>" "<C-d>zz" "[D]own scroll with cursor centered")
    (mkNormap "<C-u>" "<C-u>zz" "[U]p scroll with cursor centered")
    (mkNormap "J" "mzJ`z" "[J]oin lines without moving the cursor")
    (mkNormap "n" "nzzzv" "Jump to the next search result and center the line")
    (mkNormap "N" "Nzzzv" "Jump to the next search result and center the line")
    (mkNormap "<leader>pv" "<cmd>Ex<cr>" "[P]roject [V]iew")
    (mkNormap "<leader>x" "<cmd>!chmod +x %<cr>" "Make the current file e[x]ecutable")
    (mkNormap "<C-j>" "<C-w><C-j>" "Switch to the window below")
    (mkNormap "<C-k>" "<C-w><C-k>" "Switch to the window above")
    (mkNormap "<C-h>" "<C-w><C-h>" "Switch to the window on the left")
    (mkNormap "<C-l>" "<C-w><C-l>" "Switch to the windows on the right")

    # Insert mode mappings
    (mkInsmap "<C-c>" "<Esc>" "Exit insert mode")

    # Mixed mode mappings
    (mkKeymap "x" "<leader>p" "\"_dP" "[P]aste over selection (without affecting clipboard)")
    (mkKeymap ["n" "v"] "<leader>d" "\"_d" "[D]elete without affecting clipboard")
    (mkKeymap ["n" "v"] "<leader>y" "\"+y" "[Y]ank selection to system clipboard")
    (mkKeymap ["n" "v"] "<leader>Y" "\"+Y" "[Y]ank entire line to system clipboard")
    (mkKeymap ["n" "i"] "<esc>" "<cmd>noh<cr><esc>" "Clear search highlights and [E]scape")

    #TODO: check luasnip extraLuaConfig
    #(mkKeymap ["s" "i"] "<C-k>" "<cmd> lua if vim.snippet.active({ direction = 1 }) then vim.snippet.jump(1) end <cr>" "")
    # (mkKeymap ["s" "i"] "<C-j>" "<cmd> lua if vim.snippet.active({ direction = -1 }) then vim.snippet.jump(-1) end <cr>" "")
    (mkKeymap ["s" "i"] "<C-k>" "<cmd>JumpOrExpand<cr>" "Jump or expand the next snippet placeholder")
    (mkKeymap ["s" "i"] "<C-j>" "<cmd>JumpBackward<cr>" "Jump to the previous snippet placeholder")
  ];
}
