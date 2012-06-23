require 'zoetrope'

TestApp = App:extend
{
	run = function (self)
		App.run(self)
		the.console:addHotkey('m', debugger.reload)
	end
}

require 'tests.benchmark'
require 'tests.collisions'
require 'tests.emitters'
require 'tests.reuse'
require 'tests.files'
require 'tests.focus'
require 'tests.gamepad'
require 'tests.input'
require 'tests.loading'
require 'tests.maps'
require 'tests.recording'
require 'tests.scrolling'
require 'tests.sounds'
require 'tests.spritetypes'
require 'tests.timers'
require 'tests.tweens'
require 'tests.ui'
require 'tests.viewfx'
