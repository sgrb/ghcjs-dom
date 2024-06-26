{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.EventSource
       (js_newEventSource, newEventSource, js_close, close,
        pattern CONNECTING, pattern OPEN, pattern CLOSED, js_getUrl,
        getUrl, js_getWithCredentials, getWithCredentials,
        js_getReadyState, getReadyState, open, message, error,
        EventSource(..), gTypeEventSource)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHC.JS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe
        "(($1, $2) => { return new window[\"EventSource\"]($1,\n$2); })" js_newEventSource ::
        JSString -> Optional EventSourceInit -> IO EventSource

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation> 
newEventSource ::
               (MonadIO m, ToJSString url) =>
                 url -> Maybe EventSourceInit -> m EventSource
newEventSource url eventSourceInitDict
  = liftIO
      (js_newEventSource (toJSString url)
         (maybeToOptional eventSourceInitDict))
 
foreign import javascript unsafe "(($1) => { return $1[\"close\"](); })" js_close ::
        EventSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.close Mozilla EventSource.close documentation> 
close :: (MonadIO m) => EventSource -> m ()
close self = liftIO (js_close self)
pattern CONNECTING = 0
pattern OPEN = 1
pattern CLOSED = 2
 
foreign import javascript unsafe "(($1) => { return $1[\"url\"]; })" js_getUrl ::
        EventSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.url Mozilla EventSource.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => EventSource -> m result
getUrl self = liftIO (fromJSString <$> (js_getUrl self))
 
foreign import javascript unsafe
        "(($1) => { return ($1[\"withCredentials\"] ? 1 : 0); })" js_getWithCredentials ::
        EventSource -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.withCredentials Mozilla EventSource.withCredentials documentation> 
getWithCredentials :: (MonadIO m) => EventSource -> m Bool
getWithCredentials self = liftIO (js_getWithCredentials self)
 
foreign import javascript unsafe "(($1) => { return $1[\"readyState\"]; })"
        js_getReadyState :: EventSource -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.readyState Mozilla EventSource.readyState documentation> 
getReadyState :: (MonadIO m) => EventSource -> m Word
getReadyState self = liftIO (js_getReadyState self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onopen Mozilla EventSource.onopen documentation> 
open :: EventName EventSource Event
open = unsafeEventNameAsync (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onmessage Mozilla EventSource.onmessage documentation> 
message :: EventName EventSource MessageEvent
message = unsafeEventNameAsync (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onerror Mozilla EventSource.onerror documentation> 
error :: EventName EventSource UIEvent
error = unsafeEventNameAsync (toJSString "error")