{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.KeyboardEvent
       (js_initKeyboardEvent, initKeyboardEvent,
        pattern DOM_KEY_LOCATION_STANDARD, pattern DOM_KEY_LOCATION_LEFT,
        pattern DOM_KEY_LOCATION_RIGHT, pattern DOM_KEY_LOCATION_NUMPAD,
        js_getKeyIdentifier, getKeyIdentifier, js_getLocation, getLocation,
        js_getKeyLocation, getKeyLocation, js_getCtrlKey, getCtrlKey,
        js_getShiftKey, getShiftKey, js_getAltKey, getAltKey,
        js_getMetaKey, getMetaKey, js_getAltGraphKey, getAltGraphKey,
        KeyboardEvent, castToKeyboardEvent, gTypeKeyboardEvent)
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
        "$1[\"initKeyboardEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11, $12)"
        js_initKeyboardEvent ::
        JSRef KeyboardEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef Window ->
                  JSString -> Word -> Bool -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.initKeyboardEvent Mozilla KeyboardEvent.initKeyboardEvent documentation> 
initKeyboardEvent ::
                  (MonadIO m, ToJSString type', ToJSString keyIdentifier) =>
                    KeyboardEvent ->
                      type' ->
                        Bool ->
                          Bool ->
                            Maybe Window ->
                              keyIdentifier ->
                                Word -> Bool -> Bool -> Bool -> Bool -> Bool -> m ()
initKeyboardEvent self type' canBubble cancelable view
  keyIdentifier location ctrlKey altKey shiftKey metaKey altGraphKey
  = liftIO
      (js_initKeyboardEvent (unKeyboardEvent self) (toJSString type')
         canBubble
         cancelable
         (maybe jsNull pToJSRef view)
         (toJSString keyIdentifier)
         location
         ctrlKey
         altKey
         shiftKey
         metaKey
         altGraphKey)
pattern DOM_KEY_LOCATION_STANDARD = 0
pattern DOM_KEY_LOCATION_LEFT = 1
pattern DOM_KEY_LOCATION_RIGHT = 2
pattern DOM_KEY_LOCATION_NUMPAD = 3
 
foreign import javascript unsafe "$1[\"keyIdentifier\"]"
        js_getKeyIdentifier :: JSRef KeyboardEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyIdentifier Mozilla KeyboardEvent.keyIdentifier documentation> 
getKeyIdentifier ::
                 (MonadIO m, FromJSString result) => KeyboardEvent -> m result
getKeyIdentifier self
  = liftIO
      (fromJSString <$> (js_getKeyIdentifier (unKeyboardEvent self)))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: JSRef KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.location Mozilla KeyboardEvent.location documentation> 
getLocation :: (MonadIO m) => KeyboardEvent -> m Word
getLocation self = liftIO (js_getLocation (unKeyboardEvent self))
 
foreign import javascript unsafe "$1[\"keyLocation\"]"
        js_getKeyLocation :: JSRef KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyLocation Mozilla KeyboardEvent.keyLocation documentation> 
getKeyLocation :: (MonadIO m) => KeyboardEvent -> m Word
getKeyLocation self
  = liftIO (js_getKeyLocation (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        js_getCtrlKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.ctrlKey Mozilla KeyboardEvent.ctrlKey documentation> 
getCtrlKey :: (MonadIO m) => KeyboardEvent -> m Bool
getCtrlKey self = liftIO (js_getCtrlKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        js_getShiftKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.shiftKey Mozilla KeyboardEvent.shiftKey documentation> 
getShiftKey :: (MonadIO m) => KeyboardEvent -> m Bool
getShiftKey self = liftIO (js_getShiftKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        js_getAltKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altKey Mozilla KeyboardEvent.altKey documentation> 
getAltKey :: (MonadIO m) => KeyboardEvent -> m Bool
getAltKey self = liftIO (js_getAltKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        js_getMetaKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.metaKey Mozilla KeyboardEvent.metaKey documentation> 
getMetaKey :: (MonadIO m) => KeyboardEvent -> m Bool
getMetaKey self = liftIO (js_getMetaKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"altGraphKey\"] ? 1 : 0)"
        js_getAltGraphKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altGraphKey Mozilla KeyboardEvent.altGraphKey documentation> 
getAltGraphKey :: (MonadIO m) => KeyboardEvent -> m Bool
getAltGraphKey self
  = liftIO (js_getAltGraphKey (unKeyboardEvent self))