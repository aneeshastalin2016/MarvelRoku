sub init()
    m.characterGrid = m.top.findNode("characterGrid")
    characterList = getComicCharacters(m.top.comicId)

    characters = []
    for each character in characterList
        characters.push({
            url: character.thumbnail.path + "." + character.thumbnail.extension,
            name: character.name,
            description: character.description
        })
    end for

    m.characterGrid.content = characters
end sub
