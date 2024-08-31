{pkgs, ...}: {
  extraPackages = with pkgs; [
    golangci-lint
    eslint_d
    hadolint
    nodePackages.jsonlint
    selene
    statix
    stylelint
  ];

  plugins.lint = {
    enable = true;
    lintersByFt = {
      css = ["stylelint"];
      docker = ["hadolint"];
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
