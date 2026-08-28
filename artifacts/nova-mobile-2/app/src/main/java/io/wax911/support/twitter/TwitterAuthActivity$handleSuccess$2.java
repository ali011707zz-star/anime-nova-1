package io.wax911.support.twitter;

import ac.d;
import android.app.ProgressDialog;
import bc.c;
import cc.f;
import cc.k;
import ic.l;
import jc.m;
import rc.g1;
import rc.q0;
import vb.p;

/* compiled from: TwitterAuthActivity.kt */
/* loaded from: classes.dex */
public final class TwitterAuthActivity$handleSuccess$2 extends m implements l<Throwable, p> {
    public final /* synthetic */ ProgressDialog $loadingDialog;
    public final /* synthetic */ TwitterAuthActivity this$0;

    /* compiled from: TwitterAuthActivity.kt */
    @f(c = "io.wax911.support.twitter.TwitterAuthActivity$handleSuccess$2$1", f = "TwitterAuthActivity.kt", l = {}, m = "invokeSuspend")
    /* renamed from: io.wax911.support.twitter.TwitterAuthActivity$handleSuccess$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends k implements ic.p<q0, d<? super p>, Object> {
        public final /* synthetic */ Throwable $cause;
        public final /* synthetic */ ProgressDialog $loadingDialog;
        public int label;
        public final /* synthetic */ TwitterAuthActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Throwable th, ProgressDialog progressDialog, TwitterAuthActivity twitterAuthActivity, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$cause = th;
            this.$loadingDialog = progressDialog;
            this.this$0 = twitterAuthActivity;
        }

        @Override // cc.a
        public final d<p> create(Object obj, d<?> dVar) {
            return new AnonymousClass1(this.$cause, this.$loadingDialog, this.this$0, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, d<? super p> dVar) {
            return ((AnonymousClass1) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            c.d();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            Throwable th = this.$cause;
            if (th != null) {
                TwitterAuthActivity twitterAuthActivity = this.this$0;
                th.printStackTrace();
                twitterAuthActivity.onExceptionThrown(th);
            }
            this.$loadingDialog.dismiss();
            return p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterAuthActivity$handleSuccess$2(TwitterAuthActivity twitterAuthActivity, ProgressDialog progressDialog) {
        super(1);
        this.this$0 = twitterAuthActivity;
        this.$loadingDialog = progressDialog;
    }

    @Override // ic.l
    public /* bridge */ /* synthetic */ p invoke(Throwable th) {
        invoke2(th);
        return p.f15031a;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        rc.k.d(this.this$0, g1.c(), null, new AnonymousClass1(th, this.$loadingDialog, this.this$0, null), 2, null);
    }
}
