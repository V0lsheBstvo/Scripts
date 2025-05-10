return {
    name = "Just AFK Game",
    init = function(env)
        env.Section:NewButton(
            "Открыть VIP",
            "Доступ в VIP зону",
            function()
                local door = env.Workspace.VipDoor
                if door then
                    door.CanCollide = false
                    door.Transparency = 0.8
                end
            end
        )

        env.Section:NewSlider(
            "Сила прыжка",
            "Регулировка высоты прыжка",
            200,
            50,
            function(value)
                local char = env.GetChar()
                if char.Humanoid then
                    char.Humanoid.JumpHeight = value
                end
            end
        )
    end
}
