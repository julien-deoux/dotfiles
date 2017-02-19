import XMonad
import XMonad.Config.Azerty
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Layout.Fullscreen
import XMonad.Layout.Spacing
import System.IO

baseConfig = azertyConfig

lemakiPP = xmobarPP
	{ ppCurrent = xmobarColor "#a1a1a1" ""
	, ppVisible = xmobarColor "#a1a1a1" ""
	, ppHidden = xmobarColor "#505050" ""
	, ppUrgent = xmobarColor "#c81111" ""
	, ppSep = "|"
	, ppLayout = const ""
	}

main = do
	xmproc <- spawnPipe "/bin/xmobar /home/julien/.xmobarrc"

	xmonad $ docks $ fullscreenSupport $ baseConfig
		{ manageHook = manageDocks <+> manageHook baseConfig
		, layoutHook = avoidStruts $ spacingWithEdge 4 $ layoutHook baseConfig
		, logHook = dynamicLogWithPP lemakiPP
			{ ppOutput = hPutStrLn xmproc
			, ppTitle = xmobarColor "#6ca90e" "" . shorten 50
			}
		, terminal = "termite"
		, modMask = mod4Mask
		, borderWidth = 0
		}
