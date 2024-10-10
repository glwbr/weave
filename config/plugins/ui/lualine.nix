_: {
  plugins.lualine = {
    enable = false;
    settings = {
      options.globalstatus = true;
      sections = {
        lualine_a = [ "mode" ];
        lualine_b = [
          "branch"
          "diff"
        ];
        lualine_c = [ "filename" ];

        lualine_x = [
          "diagnostics"
          {
            name.__raw = ''
              function()
                  local msg = ""
                  local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                  local clients = vim.lsp.get_active_clients()
                  if next(clients) == nil then
                      return msg
                  end
                  for _, client in ipairs(clients) do
                      local filetypes = client.config.filetypes
                      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                          return client.name
                      end
                  end
                  return msg
              end
            '';
            icon = " ";
            color.fg = "#ffffff";
          }
          "encoding"
          "fileformat"
          "filetype"
        ];
      };
    };
  };
}
