sub main() 
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.SetMessagePort(m.port)
    scene = screen.CreateScene("MainScene")
    screen.Show()
    ' screen.SetScene(scene)
    
    while true
        msg = wait(0, m.port)
        if type(msg) = "roSGScreenEvent" then
            if msg.isScreenClosed() then
            end if
        end if
    end while
end sub
