{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedEnumeration
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedEnumeration,
        castToSVGAnimatedEnumeration, gTypeSVGAnimatedEnumeration)
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
 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: JSRef SVGAnimatedEnumeration -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.baseVal Mozilla SVGAnimatedEnumeration.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedEnumeration -> Word -> m ()
setBaseVal self val
  = liftIO (js_setBaseVal (unSVGAnimatedEnumeration self) val)
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedEnumeration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.baseVal Mozilla SVGAnimatedEnumeration.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedEnumeration -> m Word
getBaseVal self
  = liftIO (js_getBaseVal (unSVGAnimatedEnumeration self))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedEnumeration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedEnumeration.animVal Mozilla SVGAnimatedEnumeration.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedEnumeration -> m Word
getAnimVal self
  = liftIO (js_getAnimVal (unSVGAnimatedEnumeration self))