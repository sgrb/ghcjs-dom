{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCDataChannelEvent
       (js_newRTCDataChannelEvent, newRTCDataChannelEvent, js_getChannel,
        getChannel, RTCDataChannelEvent(..), gTypeRTCDataChannelEvent)
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
 
foreign import javascript unsafe
        "(($1, $2) => { return new window[\"RTCDataChannelEvent\"]($1,\n$2); })"
        js_newRTCDataChannelEvent ::
        JSString -> RTCDataChannelEventInit -> IO RTCDataChannelEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent Mozilla RTCDataChannelEvent documentation> 
newRTCDataChannelEvent ::
                       (MonadIO m, ToJSString type') =>
                         type' -> RTCDataChannelEventInit -> m RTCDataChannelEvent
newRTCDataChannelEvent type' eventInitDict
  = liftIO
      (js_newRTCDataChannelEvent (toJSString type') eventInitDict)
 
foreign import javascript unsafe "(($1) => { return $1[\"channel\"]; })" js_getChannel ::
        RTCDataChannelEvent -> IO RTCDataChannel

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDataChannelEvent.channel Mozilla RTCDataChannelEvent.channel documentation> 
getChannel ::
           (MonadIO m) => RTCDataChannelEvent -> m RTCDataChannel
getChannel self = liftIO (js_getChannel self)