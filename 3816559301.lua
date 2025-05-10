return {
    name = "Just AFK Game",
    init = function(env)
        local transp = 0.8
        env.Section:NewButton(
            "Открыть VIP",
            "Доступ в VIP зону",
            function()
                local door = env.Workspace.VipDoor
                if door then
                    door.CanCollide = false
                    door.Transparency = transp
                end
            end
        )
        env.Section:NewButton(
            "Открыть 1000Min дверь",
            "Доступ в дом",
            function()
                local door = env.Workspace:FindFirstChild("1000MinDoor")
                if door then
                    door.CanCollide = false
                    door.Transparency = transp
                end
            end
        )
    end
}
