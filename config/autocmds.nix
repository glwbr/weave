_: {
  autoCmd = [
    {
      # Enable spellcheck for some filetypes
      event = "FileType";
      pattern = ["tex" "latex" "markdown"];
      #!TODO: check how to add enxtra langfiles
      command = "setlocal spell spelllang=en";
    }
    {
      # Highlight yanked text
      event = "TextYankPost";
      pattern = "*";
      command = "lua vim.highlight.on_yank({higroup='IncSearch', timeout=50})";
    }
    {
      # Trim trailing whitespace before saving
      event = "BufWritePre";
      pattern = "*";
      command = "silent! %s/\\s\\+$//e";
    }
  ];
}
