package io.wax911.support.twitter;

import ac.d;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import bc.c;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.identity.TwitterAuthClient;
import io.wax911.support.common.CommonAuthActivity;
import io.wax911.support.common.model.AuthDataHolder;
import io.wax911.support.common.model.AuthenticationMeta;
import io.wax911.support.common.view.DialogFactory;
import jc.g;
import jc.l;
import rc.c2;
import rc.g1;
import rc.i;
import rc.k;
import vb.p;

/* compiled from: TwitterAuthActivity.kt */
/* loaded from: classes.dex */
public final class TwitterAuthActivity extends CommonAuthActivity {
    public static final Companion Companion = new Companion(null);
    private static final String PAGE_LINK = "https://twitter.com/%1$s";
    private static final String PROFILE_PIC_URL = "https://twitter.com/%1$s/profile_image?size=original";
    private final TwitterAuthActivity$callback$1 callback = new Callback<TwitterSession>() { // from class: io.wax911.support.twitter.TwitterAuthActivity$callback$1
        @Override // com.twitter.sdk.android.core.Callback
        public void failure(TwitterException twitterException) {
            l.f(twitterException, "exception");
            TwitterAuthActivity.this.onExceptionThrown(twitterException);
        }

        @Override // com.twitter.sdk.android.core.Callback
        public void success(Result<TwitterSession> result) {
            l.f(result, "result");
            TwitterAuthActivity twitterAuthActivity = TwitterAuthActivity.this;
            TwitterSession twitterSession = result.data;
            l.e(twitterSession, "result.data");
            twitterAuthActivity.handleSuccess(twitterSession);
        }
    };
    private TwitterAuthClient twitterAuthClient;

    /* compiled from: TwitterAuthActivity.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final void start(Context context) {
            Intent intent = new Intent(context, (Class<?>) TwitterAuthActivity.class);
            intent.addFlags(268435456);
            if (context == null) {
                return;
            }
            context.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object dismissLoadingDialog(ProgressDialog progressDialog, d<? super p> dVar) {
        Object g10 = i.g(g1.c(), new TwitterAuthActivity$dismissLoadingDialog$2(progressDialog, null), dVar);
        return g10 == c.d() ? g10 : p.f15031a;
    }

    private final TwitterAuthClient getTwitterAuthClient() {
        if (this.twitterAuthClient == null) {
            synchronized (TwitterAuthActivity.class) {
                if (this.twitterAuthClient == null) {
                    this.twitterAuthClient = new TwitterAuthClient();
                }
                p pVar = p.f15031a;
            }
        }
        return this.twitterAuthClient;
    }

    private final void handleCancel() {
        TwitterAuthClient twitterAuthClient = getTwitterAuthClient();
        if (twitterAuthClient != null) {
            twitterAuthClient.cancelAuthorize();
        }
        super.onCancellation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSuccess(TwitterSession twitterSession) {
        c2 d10;
        ProgressDialog createLoadingDialog = DialogFactory.INSTANCE.createLoadingDialog(this);
        createLoadingDialog.show();
        d10 = k.d(this, null, null, new TwitterAuthActivity$handleSuccess$1(this, createLoadingDialog, twitterSession, null), 3, null);
        d10.h0(new TwitterAuthActivity$handleSuccess$2(this, createLoadingDialog));
    }

    @Override // io.wax911.support.common.CommonAuthActivity
    public AuthenticationMeta getAuthenticationMeta() {
        return AuthDataHolder.Companion.getInstance().getTwitterAuthenticationMeta();
    }

    @Override // androidx.fragment.app.e, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        TwitterAuthClient twitterAuthClient;
        super.onActivityResult(i10, i11, intent);
        if (i11 == 0) {
            handleCancel();
            return;
        }
        TwitterAuthClient twitterAuthClient2 = getTwitterAuthClient();
        boolean z10 = false;
        if (twitterAuthClient2 != null && i10 == twitterAuthClient2.getRequestCode()) {
            z10 = true;
        }
        if (!z10 || (twitterAuthClient = getTwitterAuthClient()) == null) {
            return;
        }
        twitterAuthClient.onActivityResult(i10, i11, intent);
    }

    @Override // io.wax911.support.common.CommonAuthActivity, androidx.fragment.app.e, androidx.activity.ComponentActivity, e0.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TwitterSession activeSession = TwitterCore.getInstance().getSessionManager().getActiveSession();
        if (activeSession != null) {
            handleSuccess(activeSession);
            return;
        }
        TwitterAuthClient twitterAuthClient = getTwitterAuthClient();
        if (twitterAuthClient == null) {
            return;
        }
        twitterAuthClient.authorize(this, this.callback);
    }
}
