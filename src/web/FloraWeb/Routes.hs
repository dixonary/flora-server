module FloraWeb.Routes where

import Servant
import Servant.API.Generic
import Text.XML

import FloraWeb.Routes.Pages qualified as Pages
import FloraWeb.Server.OpenSearch

type ServerRoutes = NamedRoutes Routes

data Routes mode = Routes
  { assets :: mode :- "static" :> Raw
  , openSearch :: mode :- "opensearch.xml" :> Get '[OpenSearchXML] Document
  , pages :: mode :- AuthProtect "optional-cookie-auth" :> Pages.Routes
  }
  deriving stock (Generic)
