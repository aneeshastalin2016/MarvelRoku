sub init()
    m.comicGrid = m.top.findNode("comicGrid")
    comics = getComics()

    comicThumbnails = []
    for each comic in comics
        comicThumbnails.push({
            url: comic.thumbnail.path + "." + comic.thumbnail.extension,
            id: comic.id
        })
    end for

    m.comicGrid.comicThumbnails = comicThumbnails
end sub
