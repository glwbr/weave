_: {
  plugins.copilot-lua = {
    enable = true;
    suggestion.enabled = false;
    panel.enabled = false;
    filetypes = {
      yaml = false;
      markdown = false;
      help = false;
      gitcommit = false;
      gitrebase = false;
      "." = false;
    };
  };
}
