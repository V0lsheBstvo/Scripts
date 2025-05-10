return {
    name = "Just Afk Game",
    init = function(env)
        env.Section:NewButton(
            "Открыть VIP",
            "Доступ в VIP зону",
            function()
                local door = env.Workspace:FindFirstChild("VipDoor")
                if door then
                    door.CanCollide = false
                    door.Transparency = 0.8
                end
            end
        )

        env.Section:NewButton(
            "Открыть 1000Min",
            "Секретная дверь",
            function()
                local door = env.Workspace:FindFirstChild("1000MinDoor")
                if door then
                    door.CanCollide = false
                    door.Transparency = 0.7
                end
            end
        )
    end
}
