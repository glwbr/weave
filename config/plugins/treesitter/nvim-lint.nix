{pkgs, ...}: {
  extraPackages = with pkgs; [
    golangci-lint

    eslint_d
    nodePackages.jsonlint
    selene
    statix
  ];

  plugins.lint = {
    enable = true;
    lintersByFt = {
      nix = ["statix"];
      go = ["golangci-lint"];
      lua = ["selene"];
      javascript = ["eslint_d"];
      javascriptreact = ["eslint_d"];
      typescript = ["eslint_d"];
      typescriptreact = ["eslint_d"];
      json = ["jsonlint"];
    };
  };
}
