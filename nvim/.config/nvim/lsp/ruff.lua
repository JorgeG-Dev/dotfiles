return {
    cmd = {
        "ruff", "server"
    },
    filetypes = {
        "python",
    },
    root_markers = {
        ".git",
        "pyproject.toml",
        ".venv",
    },
    single_file_support = true,
    log_level = vim.lsp.protocol.MessageType.Warning,
}
