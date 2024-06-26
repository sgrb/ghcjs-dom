{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Slotable
       (js_getAssignedSlot, getAssignedSlot, getAssignedSlotUnsafe,
        getAssignedSlotUnchecked, Slotable(..), gTypeSlotable, IsSlotable,
        toSlotable)
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
 
foreign import javascript unsafe "(($1) => { return $1[\"assignedSlot\"]; })"
        js_getAssignedSlot :: Slotable -> IO (Nullable HTMLSlotElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Slotable.assignedSlot Mozilla Slotable.assignedSlot documentation> 
getAssignedSlot ::
                (MonadIO m, IsSlotable self) => self -> m (Maybe HTMLSlotElement)
getAssignedSlot self
  = liftIO
      (nullableToMaybe <$> (js_getAssignedSlot (toSlotable self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Slotable.assignedSlot Mozilla Slotable.assignedSlot documentation> 
getAssignedSlotUnsafe ::
                      (MonadIO m, IsSlotable self, HasCallStack) =>
                        self -> m HTMLSlotElement
getAssignedSlotUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAssignedSlot (toSlotable self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Slotable.assignedSlot Mozilla Slotable.assignedSlot documentation> 
getAssignedSlotUnchecked ::
                         (MonadIO m, IsSlotable self) => self -> m HTMLSlotElement
getAssignedSlotUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getAssignedSlot (toSlotable self)))