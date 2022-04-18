local tym = require('tym')

-- General things
tym.set('font', 'FiraCode Nerd Font Medium 11')
tym.set_config({
		cursor_shape = 'underline',
		autohide = true,
		padding_vertical = 15,
		padding_horizontal = 15,
})

-- Keymaps
tym.set_keymaps({
		['<Ctrl>equal'] = function()
			s = tym.get('scale') + 10
			tym.set('scale', s)
		end,
		['<Ctrl>minus'] = function()
			s = tym.get('scale') - 10
			tym.set('scale', s)
		end,
		['<Ctrl>0'] = function()
			tym.set('scale', 100)
		end,
})
