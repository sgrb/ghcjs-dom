{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLPreElement
       (js_setWidth, setWidth, js_getWidth, getWidth, js_setWrap, setWrap,
        js_getWrap, getWrap, HTMLPreElement(..), gTypeHTMLPreElement)
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
 
foreign import javascript unsafe "(($1, $2) => { $1[\"width\"] = $2; })" js_setWidth
        :: HTMLPreElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
setWidth :: (MonadIO m) => HTMLPreElement -> Int -> m ()
setWidth self val = liftIO (js_setWidth self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"width\"]; })" js_getWidth ::
        HTMLPreElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.width Mozilla HTMLPreElement.width documentation> 
getWidth :: (MonadIO m) => HTMLPreElement -> m Int
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "(($1, $2) => { $1[\"wrap\"] = $2; })" js_setWrap ::
        HTMLPreElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
setWrap :: (MonadIO m) => HTMLPreElement -> Bool -> m ()
setWrap self val = liftIO (js_setWrap self val)
 
foreign import javascript unsafe "(($1) => { return ($1[\"wrap\"] ? 1 : 0); })"
        js_getWrap :: HTMLPreElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLPreElement.wrap Mozilla HTMLPreElement.wrap documentation> 
getWrap :: (MonadIO m) => HTMLPreElement -> m Bool
getWrap self = liftIO (js_getWrap self)