_: {
  plugins = {
    friendly-snippets.enable = true;
    luasnip = {
      enable = true;
      #fromLua = [{paths = ./.;}];
      fromVscode = [
        {
          lazyLoad = true;
          paths = ./json;
        }
      ];
    };
  };
}
