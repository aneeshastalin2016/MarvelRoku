sub init()
    m.thumbnail = m.top.findNode("thumbnail")
    m.thumbnail.uri = m.top.thumbnailUrl

    m.nameLabel = m.top.findNode("nameLabel")
    m.nameLabel.text = m.top.name

    m.descriptionLabel = m.top.findNode("descriptionLabel")
    m.descriptionLabel.text = m.top.description

    m.thumbnail.observeField("focused", "onFocusChange")
end sub

sub onFocusChange()
    if m.thumbnail.focused
        scene = createObject("roSGScreen").createScene("VideoPlayerScene")
        m.top.close()
        m.top.show(scene)
    end if
end sub
