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

-- Whether focus follows the mouse pointer
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

-- Whether clicking on a window to focus also passes the click to the window
myClickJustFocuses :: Bool
myClickJustFocuses = False

-- Width of window border in pixels
myBorderWidth = 1

-- Set ModMask to super key
-- mod1Mask = left alt
-- mod2Mask =
-- mod3Mask = right alt
-- mod4Mask = super
myModMask = mod4Mask

myWorkspaces = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
