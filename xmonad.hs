-- default desktop configuration for Fedora

import qualified Data.Map as M
import Data.Maybe (maybe)
import Data.Monoid
import System.Exit
import System.Posix.Env (getEnv)
import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Config.Kde
import XMonad.Config.Xfce
import qualified XMonad.StackSet as W

main = do
  session <- getEnv "DESKTOP_SESSION"
  xmonad $ maybe desktopConfig desktop session

desktop "gnome" = gnomeConfig
desktop "kde" = kde4Config
desktop "xfce" = xfceConfig
desktop "xmonad-mate" = gnomeConfig
desktop _ = desktopConfig

myTerminal = "alacritty"

myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True
