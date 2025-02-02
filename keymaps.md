# Keymaps

In this config, the leader key is the space bar.

|    Keymap     | Action                                                                                       |
| :-----------: | :------------------------------------------------------------------------------------------- |
|  `<leader>+`  | Increment number under cursor                                                                |
|  `<leader>-`  | Decrement number under cursor                                                                |
| `<leader>sv`  | Split window vertically                                                                      |
| `<leader>sh`  | Split window horizontally                                                                    |
| `<leader>se`  | Make splits equal size                                                                       |
| `<leader>sx`  | Close current splits                                                                         |
| `<leader>to`  | Open a new tab                                                                               |
| `<leader>tx`  | Close current tab                                                                            |
| `<leader>tn`  | Go to next tab                                                                               |
| `<leader>tp`  | Go to previous tab                                                                           |
| `<leader>tf`  | Open current buffer in new tab                                                               |
|     `gd`      | Show LSP definition                                                                          |
|     `gD`      | Go to declaration                                                                            |
|     `gi`      | Show LSP implementations                                                                     |
|     `gR`      | Show LSP references                                                                          |
|     `gt`      | Show LSP type definitions                                                                    |
|     `ge`      | Prev end of word                                                                             |
|     `gf`      | Go to file under cursor                                                                      |
|     `gn`      | Search forwards and select                                                                   |
|     `gN`      | Search backwards and select                                                                  |
|     `gT`      | Go to previous tab page                                                                      |
|     `gu`      | Lowercase                                                                                    |
|     `gU`      | Uppercase                                                                                    |
|     `gv`      | Last visual selection                                                                        |
|     `gw`      | Format                                                                                       |
|     `gx`      | Opens filepath or URI under cursor with the system handler (file explorer, web browser, ...) |
|     `g%`      | Cycle backwards through results                                                              |
|     `g,`      | Go to [count] newer position in change list                                                  |
|     `g;`      | Go to [count] older position in change list                                                  |
|     `g~`      | Toggle case                                                                                  |
|     `gb`      | +Comment toggle blockwise                                                                    |
|     `gc`      | +Comment toggle linewise                                                                     |
|     `g'`      | +marks                                                                                       |
| `<leader>ca`  | See the available code actions                                                               |
| `<leader>rn`  | Smart rename                                                                                 |
|  `<leader>D`  | Show buffer diagnostics                                                                      |
|  `<leader>d`  | Show line diagnostics                                                                        |
|     `[d`      | Go to previous diagnostic                                                                    |
|     `]d`      | Go to next diagnostic                                                                        |
|      `K`      | Show documentation for what is under the cursor                                              |
| `<leader>rs`  | Restart LSP server                                                                           |
| `<leader>wr`  | Restore session for cwd                                                                      |
| `<leader>ws`  | Save session for cwd                                                                         |
| `<leader>cch` | CopilotChat help actions                                                                     |
| `<leader>ccp` | CopilotChat prompt actions                                                                   |
| `<leader>cce` | CopilotChat explain code                                                                     |
| `<leader>cct` | CopilotChat generate tests                                                                   |
| `<leader>ccr` | CopilotChat review code                                                                      |
| `<leader>ccR` | CopilotChat refactor code                                                                    |
| `<leader>ccn` | CopilotChat better naming                                                                    |
| `<leader>ccv` | CopilotChat open in vertical split                                                           |
| `<leader>ccx` | CopilotChat inline chat                                                                      |
| `<leader>cci` | CopilotChat ask input                                                                        |
| `<leader>ccm` | CopilotChat generate commit message for all changes                                          |
| `<leader>ccM` | CopilotChat generate commit message for staged changes                                       |
| `<leader>ccq` | CopilotChat quick chat                                                                       |
| `<leader>ccd` | CopilotChat debug info                                                                       |
| `<leader>ccf` | CopilotChat fix diagnostic                                                                   |
| `<leader>ccl` | CopilotChat clear buffer and chat history                                                    |
| `<leader>ccV` | CopilotChat toggle Vsplit                                                                    |
|     `]h`      | Next hunk                                                                                    |
|     `[h`      | Previous hunk                                                                                |
| `<leader>hs`  | Stage hunk                                                                                   |
| `<leader>hr`  | Reset hunk                                                                                   |
| `<leader>hS`  | Stage buffer                                                                                 |
| `<leader>hR`  | Reset buffer                                                                                 |
| `<leader>hu`  | Undo staged hunk                                                                             |
| `<leader>hp`  | Preview hunk                                                                                 |
| `<leader>hb`  | Blame line                                                                                   |
| `<leader>hB`  | Toggle line blame                                                                            |
| `<leader>hd`  | Diff this                                                                                    |
| `<leader>hD`  | Diff this ~                                                                                  |
|     `ih`      | Gitsigns select hunk                                                                         |
| `<leader>lg`  | Open Lazy Git                                                                                |
| `<leader>ll`  | Trigger linting for current file                                                             |
| `<leader>ee`  | Toggle file explorer                                                                         |
| `<leader>ef`  | Toggle file explorer on current file                                                         |
| `<leader>ec`  | Collapse file explorer                                                                       |
| `<leader>er`  | Refresh file explorer                                                                        |
|      `s`      | Substitute with motion (normal mode) / Substitute in visual mode (visual mode)               |
|     `ss`      | Substitute line                                                                              |
|      `S`      | Substitute to end of line                                                                    |
| `<leader>ff`  | Fuzzy find files in cwd                                                                      |
| `<leader>fr`  | Fuzzy find recent files                                                                      |
| `<leader>fs`  | Find string in cwd                                                                           |
| `<leader>fc`  | Find string under cursor in cwd                                                              |
| `<leader>ft`  | Find todos                                                                                   |
|     `]t`      | Next todo                                                                                    |
|     `[t`      | Previous todo                                                                                |
|  `<C-space>`  | init/increment node selection                                                                |
|    `<bs>`     | decrement node selection                                                                     |
| `<leader>xw`  | Open trouble workspace diagnostics                                                           |
| `<leader>xd`  | Open trouble document diagnostics                                                            |
| `<leader>xq`  | Open trouble quickfix list                                                                   |
| `<leader>xl`  | Open trouble location                                                                        |
| `<leader>xt`  | Open todos in trouble                                                                        |
| `<leader>sm`  | Maximize/minimize a split                                                                    |
