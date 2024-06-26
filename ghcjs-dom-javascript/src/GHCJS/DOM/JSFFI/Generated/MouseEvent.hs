{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MouseEvent
       (js_newMouseEvent, newMouseEvent, js_initMouseEvent,
        initMouseEvent, pattern WEBKIT_FORCE_AT_MOUSE_DOWN,
        pattern WEBKIT_FORCE_AT_FORCE_MOUSE_DOWN, js_getScreenX,
        getScreenX, js_getScreenY, getScreenY, js_getClientX, getClientX,
        js_getClientY, getClientY, js_getCtrlKey, getCtrlKey,
        js_getShiftKey, getShiftKey, js_getAltKey, getAltKey,
        js_getMetaKey, getMetaKey, js_getButton, getButton,
        js_getRelatedTarget, getRelatedTarget, getRelatedTargetUnsafe,
        getRelatedTargetUnchecked, js_getMovementX, getMovementX,
        js_getMovementY, getMovementY, js_getWebkitForce, getWebkitForce,
        js_getOffsetX, getOffsetX, js_getOffsetY, getOffsetY, js_getX,
        getX, js_getY, getY, js_getFromElement, getFromElement,
        getFromElementUnsafe, getFromElementUnchecked, js_getToElement,
        getToElement, getToElementUnsafe, getToElementUnchecked,
        js_getDataTransfer, getDataTransfer, getDataTransferUnsafe,
        getDataTransferUnchecked, MouseEvent(..), gTypeMouseEvent,
        IsMouseEvent, toMouseEvent)
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
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "(($1, $2) => { return new window[\"MouseEvent\"]($1, $2); })" js_newMouseEvent ::
        JSString -> Optional MouseEventInit -> IO MouseEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent Mozilla MouseEvent documentation> 
newMouseEvent ::
              (MonadIO m, ToJSString type', IsMouseEventInit eventInitDict) =>
                type' -> Maybe eventInitDict -> m MouseEvent
newMouseEvent type' eventInitDict
  = liftIO
      (js_newMouseEvent (toJSString type')
         (maybeToOptional (fmap toMouseEventInit eventInitDict)))
 
foreign import javascript unsafe
        "(($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16) => { return $1[\"initMouseEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14, $15, $16); })"
        js_initMouseEvent ::
        MouseEvent ->
          Optional JSString ->
            Bool ->
              Bool ->
                Optional Window ->
                  Optional Int ->
                    Optional Int ->
                      Optional Int ->
                        Optional Int ->
                          Optional Int ->
                            Bool ->
                              Bool -> Bool -> Bool -> Optional Word -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.initMouseEvent Mozilla MouseEvent.initMouseEvent documentation> 
initMouseEvent ::
               (MonadIO m, IsMouseEvent self, ToJSString type',
                ToJSVal relatedTarget) =>
                 self ->
                   Maybe type' ->
                     Bool ->
                       Bool ->
                         Maybe Window ->
                           Maybe Int ->
                             Maybe Int ->
                               Maybe Int ->
                                 Maybe Int ->
                                   Maybe Int ->
                                     Bool ->
                                       Bool ->
                                         Bool -> Bool -> Maybe Word -> Maybe relatedTarget -> m ()
initMouseEvent self type' canBubble cancelable view detail screenX
  screenY clientX clientY ctrlKey altKey shiftKey metaKey button
  relatedTarget
  = liftIO
      (mapM toJSVal relatedTarget >>=
         \ relatedTarget' ->
           js_initMouseEvent (toMouseEvent self) (toOptionalJSString type')
             canBubble
             cancelable
             (maybeToOptional view)
             (maybeToOptional detail)
             (maybeToOptional screenX)
             (maybeToOptional screenY)
             (maybeToOptional clientX)
             (maybeToOptional clientY)
             ctrlKey
             altKey
             shiftKey
             metaKey
             (maybeToOptional button)
             (maybeToOptional relatedTarget'))
pattern WEBKIT_FORCE_AT_MOUSE_DOWN = 1
pattern WEBKIT_FORCE_AT_FORCE_MOUSE_DOWN = 2
 
foreign import javascript unsafe "(($1) => { return $1[\"screenX\"]; })" js_getScreenX ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.screenX Mozilla MouseEvent.screenX documentation> 
getScreenX :: (MonadIO m, IsMouseEvent self) => self -> m Int
getScreenX self = liftIO (js_getScreenX (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"screenY\"]; })" js_getScreenY ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.screenY Mozilla MouseEvent.screenY documentation> 
getScreenY :: (MonadIO m, IsMouseEvent self) => self -> m Int
getScreenY self = liftIO (js_getScreenY (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"clientX\"]; })" js_getClientX ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.clientX Mozilla MouseEvent.clientX documentation> 
getClientX :: (MonadIO m, IsMouseEvent self) => self -> m Int
getClientX self = liftIO (js_getClientX (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"clientY\"]; })" js_getClientY ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.clientY Mozilla MouseEvent.clientY documentation> 
getClientY :: (MonadIO m, IsMouseEvent self) => self -> m Int
getClientY self = liftIO (js_getClientY (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return ($1[\"ctrlKey\"] ? 1 : 0); })"
        js_getCtrlKey :: MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.ctrlKey Mozilla MouseEvent.ctrlKey documentation> 
getCtrlKey :: (MonadIO m, IsMouseEvent self) => self -> m Bool
getCtrlKey self = liftIO (js_getCtrlKey (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return ($1[\"shiftKey\"] ? 1 : 0); })"
        js_getShiftKey :: MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.shiftKey Mozilla MouseEvent.shiftKey documentation> 
getShiftKey :: (MonadIO m, IsMouseEvent self) => self -> m Bool
getShiftKey self = liftIO (js_getShiftKey (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return ($1[\"altKey\"] ? 1 : 0); })"
        js_getAltKey :: MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.altKey Mozilla MouseEvent.altKey documentation> 
getAltKey :: (MonadIO m, IsMouseEvent self) => self -> m Bool
getAltKey self = liftIO (js_getAltKey (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return ($1[\"metaKey\"] ? 1 : 0); })"
        js_getMetaKey :: MouseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.metaKey Mozilla MouseEvent.metaKey documentation> 
getMetaKey :: (MonadIO m, IsMouseEvent self) => self -> m Bool
getMetaKey self = liftIO (js_getMetaKey (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"button\"]; })" js_getButton ::
        MouseEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.button Mozilla MouseEvent.button documentation> 
getButton :: (MonadIO m, IsMouseEvent self) => self -> m Word
getButton self = liftIO (js_getButton (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"relatedTarget\"]; })"
        js_getRelatedTarget :: MouseEvent -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.relatedTarget Mozilla MouseEvent.relatedTarget documentation> 
getRelatedTarget ::
                 (MonadIO m, IsMouseEvent self) => self -> m (Maybe EventTarget)
getRelatedTarget self
  = liftIO
      (nullableToMaybe <$> (js_getRelatedTarget (toMouseEvent self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.relatedTarget Mozilla MouseEvent.relatedTarget documentation> 
getRelatedTargetUnsafe ::
                       (MonadIO m, IsMouseEvent self, HasCallStack) =>
                         self -> m EventTarget
getRelatedTargetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRelatedTarget (toMouseEvent self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.relatedTarget Mozilla MouseEvent.relatedTarget documentation> 
getRelatedTargetUnchecked ::
                          (MonadIO m, IsMouseEvent self) => self -> m EventTarget
getRelatedTargetUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getRelatedTarget (toMouseEvent self)))
 
foreign import javascript unsafe "(($1) => { return $1[\"movementX\"]; })"
        js_getMovementX :: MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.movementX Mozilla MouseEvent.movementX documentation> 
getMovementX :: (MonadIO m, IsMouseEvent self) => self -> m Int
getMovementX self = liftIO (js_getMovementX (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"movementY\"]; })"
        js_getMovementY :: MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.movementY Mozilla MouseEvent.movementY documentation> 
getMovementY :: (MonadIO m, IsMouseEvent self) => self -> m Int
getMovementY self = liftIO (js_getMovementY (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"webkitForce\"]; })"
        js_getWebkitForce :: MouseEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.webkitForce Mozilla MouseEvent.webkitForce documentation> 
getWebkitForce ::
               (MonadIO m, IsMouseEvent self) => self -> m Double
getWebkitForce self
  = liftIO (js_getWebkitForce (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"offsetX\"]; })" js_getOffsetX ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.offsetX Mozilla MouseEvent.offsetX documentation> 
getOffsetX :: (MonadIO m, IsMouseEvent self) => self -> m Int
getOffsetX self = liftIO (js_getOffsetX (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"offsetY\"]; })" js_getOffsetY ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.offsetY Mozilla MouseEvent.offsetY documentation> 
getOffsetY :: (MonadIO m, IsMouseEvent self) => self -> m Int
getOffsetY self = liftIO (js_getOffsetY (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"x\"]; })" js_getX ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.x Mozilla MouseEvent.x documentation> 
getX :: (MonadIO m, IsMouseEvent self) => self -> m Int
getX self = liftIO (js_getX (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"y\"]; })" js_getY ::
        MouseEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.y Mozilla MouseEvent.y documentation> 
getY :: (MonadIO m, IsMouseEvent self) => self -> m Int
getY self = liftIO (js_getY (toMouseEvent self))
 
foreign import javascript unsafe "(($1) => { return $1[\"fromElement\"]; })"
        js_getFromElement :: MouseEvent -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.fromElement Mozilla MouseEvent.fromElement documentation> 
getFromElement ::
               (MonadIO m, IsMouseEvent self) => self -> m (Maybe Node)
getFromElement self
  = liftIO
      (nullableToMaybe <$> (js_getFromElement (toMouseEvent self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.fromElement Mozilla MouseEvent.fromElement documentation> 
getFromElementUnsafe ::
                     (MonadIO m, IsMouseEvent self, HasCallStack) => self -> m Node
getFromElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFromElement (toMouseEvent self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.fromElement Mozilla MouseEvent.fromElement documentation> 
getFromElementUnchecked ::
                        (MonadIO m, IsMouseEvent self) => self -> m Node
getFromElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getFromElement (toMouseEvent self)))
 
foreign import javascript unsafe "(($1) => { return $1[\"toElement\"]; })"
        js_getToElement :: MouseEvent -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.toElement Mozilla MouseEvent.toElement documentation> 
getToElement ::
             (MonadIO m, IsMouseEvent self) => self -> m (Maybe Node)
getToElement self
  = liftIO
      (nullableToMaybe <$> (js_getToElement (toMouseEvent self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.toElement Mozilla MouseEvent.toElement documentation> 
getToElementUnsafe ::
                   (MonadIO m, IsMouseEvent self, HasCallStack) => self -> m Node
getToElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getToElement (toMouseEvent self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.toElement Mozilla MouseEvent.toElement documentation> 
getToElementUnchecked ::
                      (MonadIO m, IsMouseEvent self) => self -> m Node
getToElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getToElement (toMouseEvent self)))
 
foreign import javascript unsafe "(($1) => { return $1[\"dataTransfer\"]; })"
        js_getDataTransfer :: MouseEvent -> IO (Nullable DataTransfer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.dataTransfer Mozilla MouseEvent.dataTransfer documentation> 
getDataTransfer ::
                (MonadIO m, IsMouseEvent self) => self -> m (Maybe DataTransfer)
getDataTransfer self
  = liftIO
      (nullableToMaybe <$> (js_getDataTransfer (toMouseEvent self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.dataTransfer Mozilla MouseEvent.dataTransfer documentation> 
getDataTransferUnsafe ::
                      (MonadIO m, IsMouseEvent self, HasCallStack) =>
                        self -> m DataTransfer
getDataTransferUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getDataTransfer (toMouseEvent self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MouseEvent.dataTransfer Mozilla MouseEvent.dataTransfer documentation> 
getDataTransferUnchecked ::
                         (MonadIO m, IsMouseEvent self) => self -> m DataTransfer
getDataTransferUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getDataTransfer (toMouseEvent self)))