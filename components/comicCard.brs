sub init()
    m.thumbnail = m.top.findNode("thumbnail")
    m.thumbnail.uri = m.top.thumbnailUrl

    m.thumbnail.observeField("focused", "onFocusChange")
end sub

sub onFocusChange()
    if m.thumbnail.focused
        comicId = m.top.comicId
        scene = createObject("roSGScreen").createScene("ComicDetailScene")
        scene.comicId = comicId
        m.top.close()
        m.top.show(scene)
    end if
end sub
