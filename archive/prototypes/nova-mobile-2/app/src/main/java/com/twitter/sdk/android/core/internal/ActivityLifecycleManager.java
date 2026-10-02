package com.twitter.sdk.android.core.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class ActivityLifecycleManager {
    private final ActivityLifecycleCallbacksWrapper callbacksWrapper;

    /* loaded from: classes.dex */
    public static class ActivityLifecycleCallbacksWrapper {
        private final Application application;
        private final Set<Application.ActivityLifecycleCallbacks> registeredCallbacks = new HashSet();

        public ActivityLifecycleCallbacksWrapper(Application application) {
            this.application = application;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearCallbacks() {
            Iterator<Application.ActivityLifecycleCallbacks> it2 = this.registeredCallbacks.iterator();
            while (it2.hasNext()) {
                this.application.unregisterActivityLifecycleCallbacks(it2.next());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean registerLifecycleCallbacks(final Callbacks callbacks) {
            if (this.application == null) {
                return false;
            }
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = new Application.ActivityLifecycleCallbacks() { // from class: com.twitter.sdk.android.core.internal.ActivityLifecycleManager.ActivityLifecycleCallbacksWrapper.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                    callbacks.onActivityCreated(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    callbacks.onActivityDestroyed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    callbacks.onActivityPaused(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    callbacks.onActivityResumed(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    callbacks.onActivitySaveInstanceState(activity, bundle);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    callbacks.onActivityStarted(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    callbacks.onActivityStopped(activity);
                }
            };
            this.application.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
            this.registeredCallbacks.add(activityLifecycleCallbacks);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callbacks {
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
        }

        public void onActivityPaused(Activity activity) {
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public ActivityLifecycleManager(Context context) {
        this.callbacksWrapper = new ActivityLifecycleCallbacksWrapper((Application) context.getApplicationContext());
    }

    public boolean registerCallbacks(Callbacks callbacks) {
        ActivityLifecycleCallbacksWrapper activityLifecycleCallbacksWrapper = this.callbacksWrapper;
        return activityLifecycleCallbacksWrapper != null && activityLifecycleCallbacksWrapper.registerLifecycleCallbacks(callbacks);
    }

    public void resetCallbacks() {
        ActivityLifecycleCallbacksWrapper activityLifecycleCallbacksWrapper = this.callbacksWrapper;
        if (activityLifecycleCallbacksWrapper != null) {
            activityLifecycleCallbacksWrapper.clearCallbacks();
        }
    }
}
