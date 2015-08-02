{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NotificationCenter
       (js_createNotification, createNotification, js_checkPermission,
        checkPermission, js_requestPermission, requestPermission,
        NotificationCenter, castToNotificationCenter,
        gTypeNotificationCenter)
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
 
foreign import javascript unsafe
        "$1[\"createNotification\"]($2, $3,\n$4)" js_createNotification ::
        JSRef NotificationCenter ->
          JSString -> JSString -> JSString -> IO (JSRef Notification)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.createNotification Mozilla NotificationCenter.createNotification documentation> 
createNotification ::
                   (MonadIO m, ToJSString iconUrl, ToJSString title,
                    ToJSString body) =>
                     NotificationCenter ->
                       iconUrl -> title -> body -> m (Maybe Notification)
createNotification self iconUrl title body
  = liftIO
      ((js_createNotification (unNotificationCenter self)
          (toJSString iconUrl)
          (toJSString title)
          (toJSString body))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"checkPermission\"]()"
        js_checkPermission :: JSRef NotificationCenter -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.checkPermission Mozilla NotificationCenter.checkPermission documentation> 
checkPermission :: (MonadIO m) => NotificationCenter -> m Int
checkPermission self
  = liftIO (js_checkPermission (unNotificationCenter self))
 
foreign import javascript unsafe "$1[\"requestPermission\"]($2)"
        js_requestPermission ::
        JSRef NotificationCenter -> JSRef VoidCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NotificationCenter.requestPermission Mozilla NotificationCenter.requestPermission documentation> 
requestPermission ::
                  (MonadIO m) => NotificationCenter -> Maybe VoidCallback -> m ()
requestPermission self callback
  = liftIO
      (js_requestPermission (unNotificationCenter self)
         (maybe jsNull pToJSRef callback))