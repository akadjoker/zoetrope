require 'zoetrope'

Files = App:extend({
	onNew = function (self)
		self.storage = Storage:new()
		self.storage.data = { red = 'yes', green = true, blue = 1 }
		self.storage:save()

		self.label = OutlineText:new({ x = 4, y =4, width = Current.app.width, height = Current.app.height })
		self.label.text = 'Saved to storage.dat:\n' .. dumpTable(self.storage.data)
		self:add(self.label)

		self.countStorage = Storage:new({ filename = 'count.dat' })
		self.countStorage:load()

		if not self.countStorage.data.count then
			self.countStorage.data.count = 0
		end

		self.countStorage.data.count = self.countStorage.data.count + 1
		self.countStorage:save()

		self.label.text = self.label.text .. '\n\nYou have run this test ' ..
						  self.countStorage.data.count .. ' times.'
	end
})