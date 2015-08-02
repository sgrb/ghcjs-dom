{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.XPathNSResolver
       (js_lookupNamespaceURI, lookupNamespaceURI, XPathNSResolver,
        castToXPathNSResolver, gTypeXPathNSResolver)
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
 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        js_lookupNamespaceURI ::
        JSRef XPathNSResolver -> JSString -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
lookupNamespaceURI ::
                   (MonadIO m, ToJSString prefix, FromJSString result) =>
                     XPathNSResolver -> prefix -> m (Maybe result)
lookupNamespaceURI self prefix
  = liftIO
      (fromMaybeJSString <$>
         (js_lookupNamespaceURI (unXPathNSResolver self)
            (toJSString prefix)))