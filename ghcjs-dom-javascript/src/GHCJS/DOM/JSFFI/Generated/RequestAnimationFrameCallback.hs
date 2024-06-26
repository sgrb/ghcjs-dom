{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RequestAnimationFrameCallback
       (newRequestAnimationFrameCallback,
        newRequestAnimationFrameCallbackSync,
        newRequestAnimationFrameCallbackAsync,
        RequestAnimationFrameCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallback ::
                                 (MonadIO m) => (Double -> IO ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallback callback
  = liftIO
      (RequestAnimationFrameCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ highResTime ->
              fromJSValUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackSync ::
                                     (MonadIO m) =>
                                       (Double -> IO ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackSync callback
  = liftIO
      (RequestAnimationFrameCallback <$>
         syncCallback1 ContinueAsync
           (\ highResTime ->
              fromJSValUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RequestAnimationFrameCallback Mozilla RequestAnimationFrameCallback documentation> 
newRequestAnimationFrameCallbackAsync ::
                                      (MonadIO m) =>
                                        (Double -> IO ()) -> m RequestAnimationFrameCallback
newRequestAnimationFrameCallbackAsync callback
  = liftIO
      (RequestAnimationFrameCallback <$>
         asyncCallback1
           (\ highResTime ->
              fromJSValUnchecked highResTime >>=
                \ highResTime' -> callback highResTime'))