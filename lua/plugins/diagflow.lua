return -- Lazy
{
  "dgagn/diagflow.nvim",
  -- event = 'LspAttach', This is what I use personnally and it works great
  opts = {
    toggle_event = { "InsertEnter" },
    update_event = { "DiagnosticChanged", ... },
  },
}
