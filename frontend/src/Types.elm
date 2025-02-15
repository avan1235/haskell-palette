module Types exposing (..)

import Http
import File exposing (File)

type alias Color = String
type alias ImageString = String
type Algorithm = MedianCut | Kmeans | KmeansPP



type alias State = {
    algorithm: Maybe Algorithm,
    image: Maybe ImageString,
    colors : List Color,
    errorMessage : Maybe String
    }


type alias Palette = List Color

type Msg 
    = ChooseFileRequest 
    | FileSelected File 
    | FileLoaded String
    | GotPalette (Result Http.Error (List Color))