require('nvim-tree').setup({
		view = {
			side = "left",
			hide_root_folder = true,
		},
		disable_netrw = true,
    hijack_netrw = true,
 	  hijack_cursor = true,
    update_cwd = true,
})
