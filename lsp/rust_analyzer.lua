return {
    cmd = { 'rust-analyzer' },
    filetypes = { 'rust' },
    root_markers = { 'Cargo.toml', 'rust-project.json', '.git' },
    capabilities = caps,
    settings = {
        ['rust-analyzer'] = {
            cargo = { allFeatures = true },
            formatting = {
                command = { "rustfmt" }
            },
        },
    },
}
