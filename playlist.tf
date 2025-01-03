resource "spotify_playlist" "Grind" {
    name = "Tech_Grind"
    description = "playlist dedicted for the tech devs for the grinding part and this playlist has been built with Terraform"
    tracks = ["3GpbwCm3YxiWDvy29Uo3vP"]
}

data "spotify_search_track" "eminem"{
    artist = "Eminem"
}

resource "spotify_playlist" "slimshady"{
    name = "Eminem_fav"
    tracks = [data.spotify_search_track.eminem.tracks[1].id, data.spotify_search_track.eminem.tracks[2].id, data.spotify_search_track.eminem.tracks[3].id]
}