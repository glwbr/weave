{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    folding = false;
    grammarPackages = with pkgs; vimPlugins.nvim-treesitter.allGrammars;
    nixvimInjections = true;

    settings = {
      indent.enable = true;
      highlight.enable = true;
    };
  };
}
