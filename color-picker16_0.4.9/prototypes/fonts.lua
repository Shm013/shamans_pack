-- For the simple square font:
-- A = Large square that has small overlapped area to create seamless block
-- B = Smaller square
-- C = Up-side-down triangle with 2 character width.
-- D = Triangle with 2 character width.

data:extend(
{
	-- Simple square. (Result)
	{
		type = "font",
		name = color_picker_defines.names.font.simple_square,
		from = color_picker_defines.names.font_file.simple_square,
		size = color_picker_defines.font_sizes.result
	},
	-- Small simple square. (Saved color presets)
	{
		type = "font",
		name = color_picker_defines.names.font.simple_square_small,
		from = color_picker_defines.names.font_file.simple_square,
		size = color_picker_defines.font_sizes.saved_preset
	},	
	-- Tiny simple square. (Current color to be added as a preset)
	{
		type = "font",
		name = color_picker_defines.names.font.simple_square_tiny,
		from = color_picker_defines.names.font_file.simple_square,
		size = color_picker_defines.font_sizes.add_to_preset
	}
})