{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.VTTRegionList
       (js_item, item, js_getRegionById, getRegionById, js_getLength,
        getLength, VTTRegionList, castToVTTRegionList, gTypeVTTRegionList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef VTTRegionList -> Word -> IO (JSRef VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.item Mozilla VTTRegionList.item documentation> 
item :: (MonadIO m) => VTTRegionList -> Word -> m (Maybe VTTRegion)
item self index
  = liftIO ((js_item (unVTTRegionList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getRegionById\"]($2)"
        js_getRegionById ::
        JSRef VTTRegionList -> JSString -> IO (JSRef VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.getRegionById Mozilla VTTRegionList.getRegionById documentation> 
getRegionById ::
              (MonadIO m, ToJSString id) =>
                VTTRegionList -> id -> m (Maybe VTTRegion)
getRegionById self id
  = liftIO
      ((js_getRegionById (unVTTRegionList self) (toJSString id)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef VTTRegionList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegionList.length Mozilla VTTRegionList.length documentation> 
getLength :: (MonadIO m) => VTTRegionList -> m Word
getLength self = liftIO (js_getLength (unVTTRegionList self))