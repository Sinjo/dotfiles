#!/usr/bin/env bash

########################################################
# Make fonts not look like ass on 4k external displays #
########################################################

# In their continued war against their customers, Apple decided sub-pixel
# hinting wasn't worth supporting since Mojave. Turning off their font
# smoothing algorithm makes fonts look less bad on monitor sizes/resolutions
# where you need fractional scaling.
defaults write -g AppleFontSmoothing -int 0
defaults write -g CGFontRenderingFontSmoothingDisabled -bool YES

#############################################
# Turn off a bunch of irritating animations #
#############################################

# Window open/close and resize animations
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false
defaults write -g NSWindowResizeTime -float 0.001

# Finder animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Mission Control animation speed
defaults write com.apple.dock expose-animation-duration -float 0.12

# Instant Dock auto-hide (only matters if you auto-hide the Dock)
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.15

##################################################
# Turn off pointer acceleration on external mice #
##################################################

defaults write -g com.apple.mouse.linear -bool true
