{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MessagePort
       (js_postMessage, postMessage, js_start, start, js_close, close,
        message, MessagePort(..), gTypeMessagePort)
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
 
foreign import javascript safe "(($1, $2, $3) => { return $1[\"postMessage\"]($2, $3); })"
        js_postMessage :: MessagePort -> JSVal -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.postMessage Mozilla MessagePort.postMessage documentation> 
postMessage ::
            (MonadIO m, ToJSVal message, IsGObject transfer) =>
              MessagePort -> message -> [transfer] -> m ()
postMessage self message transfer
  = liftIO
      (toJSVal transfer >>=
         \ transfer' ->
           toJSVal message >>= \ message' -> js_postMessage self message'
             transfer')
 
foreign import javascript unsafe "(($1) => { return $1[\"start\"](); })" js_start ::
        MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.start Mozilla MessagePort.start documentation> 
start :: (MonadIO m) => MessagePort -> m ()
start self = liftIO (js_start self)
 
foreign import javascript unsafe "(($1) => { return $1[\"close\"](); })" js_close ::
        MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.close Mozilla MessagePort.close documentation> 
close :: (MonadIO m) => MessagePort -> m ()
close self = liftIO (js_close self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MessagePort.onmessage Mozilla MessagePort.onmessage documentation> 
message :: EventName MessagePort MessageEvent
message = unsafeEventNameAsync (toJSString "message")