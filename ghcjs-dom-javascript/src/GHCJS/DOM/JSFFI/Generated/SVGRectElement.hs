{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGRectElement
       (js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, js_getRx, getRx, js_getRy, getRy, SVGRectElement(..),
        gTypeSVGRectElement)
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
 
foreign import javascript unsafe "(($1) => { return $1[\"x\"]; })" js_getX ::
        SVGRectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.x Mozilla SVGRectElement.x documentation> 
getX :: (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "(($1) => { return $1[\"y\"]; })" js_getY ::
        SVGRectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.y Mozilla SVGRectElement.y documentation> 
getY :: (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getY self = liftIO (js_getY self)
 
foreign import javascript unsafe "(($1) => { return $1[\"width\"]; })" js_getWidth ::
        SVGRectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.width Mozilla SVGRectElement.width documentation> 
getWidth :: (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "(($1) => { return $1[\"height\"]; })" js_getHeight ::
        SVGRectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.height Mozilla SVGRectElement.height documentation> 
getHeight :: (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getHeight self = liftIO (js_getHeight self)
 
foreign import javascript unsafe "(($1) => { return $1[\"rx\"]; })" js_getRx ::
        SVGRectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.rx Mozilla SVGRectElement.rx documentation> 
getRx :: (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getRx self = liftIO (js_getRx self)
 
foreign import javascript unsafe "(($1) => { return $1[\"ry\"]; })" js_getRy ::
        SVGRectElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRectElement.ry Mozilla SVGRectElement.ry documentation> 
getRy :: (MonadIO m) => SVGRectElement -> m SVGAnimatedLength
getRy self = liftIO (js_getRy self)