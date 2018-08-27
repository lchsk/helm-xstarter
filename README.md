# helm-xstarter

This Emacs package offers a [Helm interface](https://github.com/emacs-helm/helm) for [**xstarter**](https://xstarter.org). It loads a list of installed applications and lets a user select one to launch.

It also records recently open programs and shows them on top.

![`helm-xstarter` session](helm_xstarter.png)

## Installation

**`helm-xstarter` requires xstarter (>= 0.8) to be installed**

See [installation instructions](https://github.com/lchsk/xstarter).

1. Download `helm-xstarter.el` file and put it in you Emacs config directory.
2. Load the package: `(require 'helm-xstarter)`
3. Use it by `M-x helm-xstarter`
