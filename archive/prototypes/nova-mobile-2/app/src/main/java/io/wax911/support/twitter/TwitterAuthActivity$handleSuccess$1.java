package io.wax911.support.twitter;

import ac.d;
import android.app.ProgressDialog;
import bc.c;
import cc.b;
import cc.f;
import cc.k;
import com.google.android.material.progressindicator.BaseProgressIndicator;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.models.User;
import ic.p;
import io.wax911.support.common.model.SocialUser;
import java.util.Arrays;
import jc.a0;
import jc.l;
import rc.g1;
import rc.i;
import rc.n2;
import rc.q0;
import rd.q;

/* compiled from: TwitterAuthActivity.kt */
@f(c = "io.wax911.support.twitter.TwitterAuthActivity$handleSuccess$1", f = "TwitterAuthActivity.kt", l = {68, 81}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TwitterAuthActivity$handleSuccess$1 extends k implements p<q0, d<? super vb.p>, Object> {
    public final /* synthetic */ ProgressDialog $loadingDialog;
    public final /* synthetic */ TwitterSession $session;
    public Object L$0;
    public int label;
    public final /* synthetic */ TwitterAuthActivity this$0;

    /* compiled from: TwitterAuthActivity.kt */
    @f(c = "io.wax911.support.twitter.TwitterAuthActivity$handleSuccess$1$1", f = "TwitterAuthActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: io.wax911.support.twitter.TwitterAuthActivity$handleSuccess$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends k implements p<q0, d<? super vb.p>, Object> {
        public final /* synthetic */ SocialUser $user;
        public int label;
        public final /* synthetic */ TwitterAuthActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TwitterAuthActivity twitterAuthActivity, SocialUser socialUser, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.this$0 = twitterAuthActivity;
            this.$user = socialUser;
        }

        @Override // cc.a
        public final d<vb.p> create(Object obj, d<?> dVar) {
            return new AnonymousClass1(this.this$0, this.$user, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
            return ((AnonymousClass1) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            c.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            this.this$0.onSocialSuccess(this.$user);
            return vb.p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterAuthActivity$handleSuccess$1(TwitterAuthActivity twitterAuthActivity, ProgressDialog progressDialog, TwitterSession twitterSession, d<? super TwitterAuthActivity$handleSuccess$1> dVar) {
        super(2, dVar);
        this.this$0 = twitterAuthActivity;
        this.$loadingDialog = progressDialog;
        this.$session = twitterSession;
    }

    @Override // cc.a
    public final d<vb.p> create(Object obj, d<?> dVar) {
        return new TwitterAuthActivity$handleSuccess$1(this.this$0, this.$loadingDialog, this.$session, dVar);
    }

    @Override // ic.p
    public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
        return ((TwitterAuthActivity$handleSuccess$1) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
    }

    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        q<User> execute;
        Object dismissLoadingDialog;
        Object d10 = c.d();
        int i10 = this.label;
        if (i10 == 0) {
            vb.k.b(obj);
            execute = TwitterCore.getInstance().getApiClient().getAccountService().verifyCredentials(b.a(false), b.a(true), b.a(true)).execute();
            TwitterAuthActivity twitterAuthActivity = this.this$0;
            ProgressDialog progressDialog = this.$loadingDialog;
            this.L$0 = execute;
            this.label = 1;
            dismissLoadingDialog = twitterAuthActivity.dismissLoadingDialog(progressDialog, this);
            if (dismissLoadingDialog == d10) {
                return d10;
            }
        } else {
            if (i10 != 1) {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
                return vb.p.f15031a;
            }
            execute = (q) this.L$0;
            vb.k.b(obj);
        }
        SocialUser socialUser = new SocialUser(null, null, null, null, null, null, null, null, BaseProgressIndicator.MAX_ALPHA, null);
        TwitterSession twitterSession = this.$session;
        User a10 = execute.a();
        socialUser.setUserId(String.valueOf(a10.getId()));
        socialUser.setAccessToken(twitterSession.getAuthToken().token);
        socialUser.setSecretToken(twitterSession.getAuthToken().secret);
        a0 a0Var = a0.f9170a;
        String format = String.format("https://twitter.com/%1$s/profile_image?size=original", Arrays.copyOf(new Object[]{a10.screenName}, 1));
        l.e(format, "format(format, *args)");
        socialUser.setProfilePictureUrl(format);
        socialUser.setEmail(a10.email);
        socialUser.setFullName(a10.name);
        socialUser.setUsername(a10.screenName);
        String format2 = String.format("https://twitter.com/%1$s", Arrays.copyOf(new Object[]{a10.screenName}, 1));
        l.e(format2, "format(format, *args)");
        socialUser.setPageLink(format2);
        n2 c10 = g1.c();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, socialUser, null);
        this.L$0 = null;
        this.label = 2;
        if (i.g(c10, anonymousClass1, this) == d10) {
            return d10;
        }
        return vb.p.f15031a;
    }
}
