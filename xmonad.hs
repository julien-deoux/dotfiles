import XMonad
import XMonad.Config.Azerty
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Util.EZConfig
import XMonad.Layout.Fullscreen
import XMonad.Layout.Spacing
import XMonad.Layout.BinarySpacePartition
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

lemakeys = 
	[ ((mod4Mask .|. shiftMask, xK_n), spawn "chromium")
	, ((mod4Mask .|. shiftMask, xK_f), spawn "thunar")
	, ((mod4Mask, xK_Pause), spawn "i3lock -i /home/julien/Pictures/Wallpapers/i3lock.png && sleep")
	, ((mod4Mask .|. shiftMask, xK_Pause), spawn "poweroff")
	, ((0, 0x1008FF02), spawn "xbacklight -inc 5") -- xF86XK_MonBrightnessUp
	, ((0, 0x1008FF03), spawn "xbacklight -dec 5") -- xF86XK_MonBrightnessDown
	]

main = do
	xmproc <- spawnPipe "/bin/xmobar /home/julien/.xmobarrc"

	xmonad $ docks $ fullscreenSupport $ baseConfig
		{ manageHook = manageDocks <+> manageHook baseConfig
		, layoutHook = avoidStruts $ spacingWithEdge 4 $ emptyBSP
		, logHook = dynamicLogWithPP lemakiPP
			{ ppOutput = hPutStrLn xmproc
			, ppTitle = xmobarColor "#6ca90e" "" . shorten 50
			}
		, terminal = "termite"
		, modMask = mod4Mask
		, borderWidth = 0
		} `additionalKeys` lemakeys
