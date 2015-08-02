{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.UserMessageHandler
       (js_postMessage, postMessage, UserMessageHandler,
        castToUserMessageHandler, gTypeUserMessageHandler)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"postMessage\"]($2)"
        js_postMessage ::
        JSRef UserMessageHandler -> JSRef SerializedScriptValue -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/UserMessageHandler.postMessage Mozilla UserMessageHandler.postMessage documentation> 
postMessage ::
            (MonadIO m, IsSerializedScriptValue message) =>
              UserMessageHandler -> Maybe message -> m ()
postMessage self message
  = liftIO
      (js_postMessage (unUserMessageHandler self)
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            message))