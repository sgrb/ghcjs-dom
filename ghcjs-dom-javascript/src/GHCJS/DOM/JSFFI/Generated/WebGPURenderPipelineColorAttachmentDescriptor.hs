{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPURenderPipelineColorAttachmentDescriptor
       (js_setPixelFormat, setPixelFormat, js_getPixelFormat,
        getPixelFormat, WebGPURenderPipelineColorAttachmentDescriptor(..),
        gTypeWebGPURenderPipelineColorAttachmentDescriptor)
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
 
foreign import javascript unsafe "(($1, $2) => { $1[\"pixelFormat\"] = $2; })"
        js_setPixelFormat ::
        WebGPURenderPipelineColorAttachmentDescriptor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineColorAttachmentDescriptor.pixelFormat Mozilla WebGPURenderPipelineColorAttachmentDescriptor.pixelFormat documentation> 
setPixelFormat ::
               (MonadIO m) =>
                 WebGPURenderPipelineColorAttachmentDescriptor -> Word -> m ()
setPixelFormat self val = liftIO (js_setPixelFormat self val)
 
foreign import javascript unsafe "(($1) => { return $1[\"pixelFormat\"]; })"
        js_getPixelFormat ::
        WebGPURenderPipelineColorAttachmentDescriptor -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPURenderPipelineColorAttachmentDescriptor.pixelFormat Mozilla WebGPURenderPipelineColorAttachmentDescriptor.pixelFormat documentation> 
getPixelFormat ::
               (MonadIO m) =>
                 WebGPURenderPipelineColorAttachmentDescriptor -> m Word
getPixelFormat self = liftIO (js_getPixelFormat self)