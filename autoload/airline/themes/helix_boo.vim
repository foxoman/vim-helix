" Helix-boo palette adaptation for Airline
let s:berry = "#3A2A4D"
let s:berry_fade = "#5A3D6E"
let s:berry_dim = "#47345E"
let s:berry_saturated = "#2B1C3D"
let s:berry_desaturated = "#886C9C"
let s:bubblegum = "#D678B5"
let s:gold = "#E3C0A8"
let s:lilac = "#C7B8E0"
let s:mint = "#7FC9AB"
let s:violet = "#C78DFC"

" Assuming a simple conversion for cterm colors, this part may need adjustment
" to better match your terminal's color capabilities.
let s:cterm_berry = "56"
let s:cterm_berry_fade = "97"
let s:cterm_berry_dim = "54"
let s:cterm_berry_saturated = "55"
let s:cterm_berry_desaturated = "134"
let s:cterm_bubblegum = "176"
let s:cterm_gold = "223"
let s:cterm_lilac = "189"
let s:cterm_mint = "108"
let s:cterm_violet = "177"

let g:airline#themes#helix_boo#palette = {}

" Modified indicator
let s:modified = { 'airline_c': [ s:gold, '', s:cterm_gold, '', '' ] }

" Normal mode
let s:N1 = [ s:berry , s:mint , s:cterm_berry , s:cterm_mint ]
let s:N2 = [ s:berry , s:bubblegum , s:cterm_berry , s:cterm_bubblegum ]
let s:N3 = [ s:lilac , s:berry_dim , s:cterm_lilac , s:cterm_berry_dim ]
let g:airline#themes#helix_boo#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#helix_boo#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:berry , s:violet , s:cterm_berry , s:cterm_violet ]
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#helix_boo#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#helix_boo#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:berry , s:gold, s:cterm_berry , s:cterm_gold ]
let s:V2 = s:N2
let s:V3 = s:N3
let g:airline#themes#helix_boo#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#helix_boo#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:berry , s:berry_desaturated , s:cterm_berry, s:cterm_berry_desaturated ]
let s:R2 = s:N2
let s:R3 = s:N3
let g:airline#themes#helix_boo#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#helix_boo#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:berry , s:bubblegum , s:cterm_berry , s:cterm_bubblegum ]
let s:IN2 = [ s:bubblegum , s:berry , s:cterm_bubblegum , s:cterm_berry ]
let s:IN3 = s:IN2
let g:airline#themes#helix_boo#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#helix_boo#palette.inactive_modified = s:modified

" Adjust or add other modes and specific configurations as needed
