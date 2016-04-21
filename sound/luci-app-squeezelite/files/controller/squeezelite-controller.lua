module("luci.controller.squeezelite-controller", package.seeall)

function index()
	entry({"admin", "services", "squeezelite"}, firstchild(), "Squeezelite", 60)
	entry({"admin", "services", "squeezelite", "config"}, cbi("squeezelite-cbi"), "Configure", 1)
	entry({"admin", "services", "squeezelite", "info"}, template("squeezelite-view"), "Info", 2)
end
