" Author: Jarod Richardson <jdr2698@gmail.com>

lua << EOF
package.loaded['starlight'] = nil
package.loaded['starlight.highlights'] = nil
package.loaded['starlight.Treesitter'] = nil
package.loaded['starlight.markdown'] = nil
package.loaded['starlight.Whichkey'] = nil
package.loaded['starlight.Git'] = nil
package.loaded['starlight.LSP'] = nil

require("starlight")
EOF
