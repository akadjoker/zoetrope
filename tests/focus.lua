require 'zoetrope'

Focus = App:extend({
	onRun = function (self)
		self.player = Fill:new({ x = 64, y = 64, width = 16, height = 16 })
		self:add(self.player)
		self.view.focus = self.player
		self.view.focusOffset.y = 128

		self.view.minVisible.x = 0
		self.view.maxVisible.x = 800
		self.view.minVisible.y = 0
		self.view.maxVisible.y = 1280
		
		self:add(Fill:new({ x = 0, y = 0, width = 32, height = 32 }))
		self:add(Fill:new({ x = 768, y = 0, width = 32, height = 32 }))
		self:add(Fill:new({ x = 0, y = 568, width = 32, height = 32 }))
		self:add(Fill:new({ x = 768, y = 568, width = 32, height = 32 }))
		self:add(Fill:new({ x = 0, y = 1248, width = 32, height = 32 }))
		self:add(Fill:new({ x = 768, y = 1248, width = 32, height = 32 }))
		
		if DEBUG then
			the.console:watch('sprite x', 'the.app.player.x')
			the.console:watch('sprite y', 'the.app.player.y')
			the.console:watch('view x', 'the.view.translate.x')
			the.console:watch('view y', 'the.view.maxVisible.y')
		end
	end,
	
	onUpdate = function (self, elapsed)
		self.player.velocity.x = 0
		self.player.velocity.y = 0
		
		if self.keys:pressed('left') then
			self.player.velocity.x = -150
		end
		
		if self.keys:pressed('right') then
			self.player.velocity.x = 150
		end
		
		if self.keys:pressed('up') then
			self.player.velocity.y = -150
		end
		
		if self.keys:pressed('down') then
			self.player.velocity.y = 150
		end
	end
})
