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
	, ppSep = " | "
	, ppLayout = const ""
	}

lemakeys = 
	[ ((mod4Mask .|. shiftMask, xK_n), spawn "min")
	, ((mod4Mask .|. shiftMask, xK_f), spawn "thunar")
	, ((mod4Mask .|. shiftMask, xK_b), spawn "chromium")
	, ((mod4Mask .|. shiftMask, xK_a), spawn "non-session-manager")
	, ((mod4Mask, xK_Pause), spawn "i3lock -i /home/julien/Pictures/Wallpapers/i3lock.png && sleep")
	, ((mod4Mask .|. shiftMask, xK_Pause), spawn "poweroff")
	, ((0, 0x1008FF02), spawn "xbacklight -inc 5") -- xF86XK_MonBrightnessUp
	, ((0, 0x1008FF03), spawn "xbacklight -dec 3") -- xF86XK_MonBrightnessDown
	, ((0, 0x1008FF11), spawn "amixer sset Master 3%-") -- xF86XK_AudioLowerVolume
	, ((0, 0x1008FF13), spawn "amixer sset Master 5%+") -- xF86XK_AudioRaiseVolume
	, ((0, 0x1008FF12), spawn "amixer sset Master toggle") -- xF86XK_AudioMute
	, ((0, xK_Print), spawn "scrot -e 'mv $f ~/Pictures/Screenshots'")
	]

main = do
	xmproc <- spawnPipe "/bin/xmobar /home/julien/.xmobarrc"

	xmonad $ docks $ fullscreenSupport $ baseConfig
		{ manageHook = manageDocks <+> manageHook baseConfig
		, layoutHook = avoidStruts $ spacingWithEdge 12 $ emptyBSP
		, logHook = dynamicLogWithPP lemakiPP
			{ ppOutput = hPutStrLn xmproc
			, ppTitle = xmobarColor "#6ca90e" "" . shorten 50
			}
		, terminal = "termite"
		, modMask = mod4Mask
		, borderWidth = 0
		} `additionalKeys` lemakeys
