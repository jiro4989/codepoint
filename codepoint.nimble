# Package

version       = "1.0.0"
author        = "jiro4989"
description   = "codepoint prints codepoint of characters."
license       = "MIT"
srcDir        = "src"
bin           = @["codepoint"]
binDir        = "bin"


# Dependencies

requires "nim >= 1.2.4"
requires "cligen >= 1.0.0"

import os, strformat

task archive, "Create archived assets":
  let app = "codepoint"
  let assets = &"{app}_{buildOS}"
  let dir = "dist"/assets
  mkDir dir
  cpDir "bin", dir/"bin"
  cpFile "LICENSE", dir/"LICENSE"
  cpFile "README.rst", dir/"README.rst"
  withDir "dist":
    when buildOS == "windows":
      exec &"7z a {assets}.zip {assets}"
    else:
      exec &"tar czf {assets}.tar.gz {assets}"
