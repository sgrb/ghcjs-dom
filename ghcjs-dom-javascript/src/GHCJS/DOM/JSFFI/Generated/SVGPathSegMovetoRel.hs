{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegMovetoRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        SVGPathSegMovetoRel(..), gTypeSVGPathSegMovetoRel)
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
 
foreign import javascript unsafe "(($1, $2) => { $1[\"x\"] = $2; })" js_setX ::
        SVGPathSegMovetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.x Mozilla SVGPathSegMovetoRel.x documentation> 
setX :: (MonadIO m) => SVGPathSegMovetoRel -> Float -> m ()
setX self val = liftIO (js_setX self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"x\"]; })" js_getX ::
        SVGPathSegMovetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.x Mozilla SVGPathSegMovetoRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegMovetoRel -> m Float
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"y\"] = $2; })" js_setY ::
        SVGPathSegMovetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.y Mozilla SVGPathSegMovetoRel.y documentation> 
setY :: (MonadIO m) => SVGPathSegMovetoRel -> Float -> m ()
setY self val = liftIO (js_setY self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"y\"]; })" js_getY ::
        SVGPathSegMovetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.y Mozilla SVGPathSegMovetoRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegMovetoRel -> m Float
getY self = liftIO (js_getY self)