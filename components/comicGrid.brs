sub init()
    m.comicGrid = m.top.findNode("comicGrid")
    m.comicGrid.content = m.top.comicThumbnails

    m.comicGrid.observeField("itemSelected", "onItemSelected")
end sub

sub onItemSelected()
    item = m.comicGrid.itemSelected
    comicId = item.id
    scene = createObject("roSGScreen").createScene("ComicDetailScene")
    scene.comicId = comicId
    m.top.close()
    m.top.show(scene)
end sub
