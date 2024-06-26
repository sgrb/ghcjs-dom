{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSKeyframesRule
       (js_insertRule, insertRule, js_appendRule, appendRule,
        js_deleteRule, deleteRule, js_findRule, findRule, findRule_,
        findRuleUnsafe, findRuleUnchecked, js_get, get, get_, js_setName,
        setName, js_getName, getName, js_getCssRules, getCssRules,
        CSSKeyframesRule(..), gTypeCSSKeyframesRule)
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
 
foreign import javascript unsafe "(($1, $2) => { return $1[\"insertRule\"]($2); })"
        js_insertRule :: CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.insertRule Mozilla CSSKeyframesRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
insertRule self rule
  = liftIO (js_insertRule self (toJSString rule))
 
foreign import javascript unsafe "(($1, $2) => { return $1[\"appendRule\"]($2); })"
        js_appendRule :: CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.appendRule Mozilla CSSKeyframesRule.appendRule documentation> 
appendRule ::
           (MonadIO m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
appendRule self rule
  = liftIO (js_appendRule self (toJSString rule))
 
foreign import javascript unsafe "(($1, $2) => { return $1[\"deleteRule\"]($2); })"
        js_deleteRule :: CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.deleteRule Mozilla CSSKeyframesRule.deleteRule documentation> 
deleteRule ::
           (MonadIO m, ToJSString key) => CSSKeyframesRule -> key -> m ()
deleteRule self key = liftIO (js_deleteRule self (toJSString key))
 
foreign import javascript unsafe "(($1, $2) => { return $1[\"findRule\"]($2); })" js_findRule
        :: CSSKeyframesRule -> JSString -> IO (Nullable CSSKeyframeRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
findRule ::
         (MonadIO m, ToJSString key) =>
           CSSKeyframesRule -> key -> m (Maybe CSSKeyframeRule)
findRule self key
  = liftIO (nullableToMaybe <$> (js_findRule self (toJSString key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
findRule_ ::
          (MonadIO m, ToJSString key) => CSSKeyframesRule -> key -> m ()
findRule_ self key
  = liftIO (void (js_findRule self (toJSString key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
findRuleUnsafe ::
               (MonadIO m, ToJSString key, HasCallStack) =>
                 CSSKeyframesRule -> key -> m CSSKeyframeRule
findRuleUnsafe self key
  = liftIO
      ((nullableToMaybe <$> (js_findRule self (toJSString key))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
findRuleUnchecked ::
                  (MonadIO m, ToJSString key) =>
                    CSSKeyframesRule -> key -> m CSSKeyframeRule
findRuleUnchecked self key
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_findRule self (toJSString key)))
 
foreign import javascript unsafe "(($1, $2) => { return $1[$2]; })" js_get ::
        CSSKeyframesRule -> Word -> IO CSSKeyframeRule

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.get Mozilla CSSKeyframesRule.get documentation> 
get :: (MonadIO m) => CSSKeyframesRule -> Word -> m CSSKeyframeRule
get self index = liftIO (js_get self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.get Mozilla CSSKeyframesRule.get documentation> 
get_ :: (MonadIO m) => CSSKeyframesRule -> Word -> m ()
get_ self index = liftIO (void (js_get self index))
 
foreign import javascript unsafe "(($1, $2) => { $1[\"name\"] = $2; })" js_setName ::
        CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => CSSKeyframesRule -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "(($1) => { return $1[\"name\"]; })" js_getName ::
        CSSKeyframesRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => CSSKeyframesRule -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "(($1) => { return $1[\"cssRules\"]; })" js_getCssRules
        :: CSSKeyframesRule -> IO CSSRuleList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.cssRules Mozilla CSSKeyframesRule.cssRules documentation> 
getCssRules :: (MonadIO m) => CSSKeyframesRule -> m CSSRuleList
getCssRules self = liftIO (js_getCssRules self)