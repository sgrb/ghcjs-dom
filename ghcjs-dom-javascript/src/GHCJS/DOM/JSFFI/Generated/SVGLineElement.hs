{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGLineElement
       (js_getX1, getX1, js_getY1, getY1, js_getX2, getX2, js_getY2,
        getY2, SVGLineElement(..), gTypeSVGLineElement)
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
 
foreign import javascript unsafe "(($1) => { return $1[\"x1\"]; })" js_getX1 ::
        SVGLineElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x1 Mozilla SVGLineElement.x1 documentation> 
getX1 :: (MonadIO m) => SVGLineElement -> m SVGAnimatedLength
getX1 self = liftIO (js_getX1 self)
 
foreign import javascript unsafe "(($1) => { return $1[\"y1\"]; })" js_getY1 ::
        SVGLineElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y1 Mozilla SVGLineElement.y1 documentation> 
getY1 :: (MonadIO m) => SVGLineElement -> m SVGAnimatedLength
getY1 self = liftIO (js_getY1 self)
 
foreign import javascript unsafe "(($1) => { return $1[\"x2\"]; })" js_getX2 ::
        SVGLineElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x2 Mozilla SVGLineElement.x2 documentation> 
getX2 :: (MonadIO m) => SVGLineElement -> m SVGAnimatedLength
getX2 self = liftIO (js_getX2 self)
 
foreign import javascript unsafe "(($1) => { return $1[\"y2\"]; })" js_getY2 ::
        SVGLineElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y2 Mozilla SVGLineElement.y2 documentation> 
getY2 :: (MonadIO m) => SVGLineElement -> m SVGAnimatedLength
getY2 self = liftIO (js_getY2 self)