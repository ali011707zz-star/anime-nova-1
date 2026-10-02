package io.wax911.support.twitter;

import ac.d;
import android.app.ProgressDialog;
import bc.c;
import cc.f;
import cc.k;
import ic.p;
import rc.q0;

/* compiled from: TwitterAuthActivity.kt */
@f(c = "io.wax911.support.twitter.TwitterAuthActivity$dismissLoadingDialog$2", f = "TwitterAuthActivity.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TwitterAuthActivity$dismissLoadingDialog$2 extends k implements p<q0, d<? super vb.p>, Object> {
    public final /* synthetic */ ProgressDialog $progressDialog;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterAuthActivity$dismissLoadingDialog$2(ProgressDialog progressDialog, d<? super TwitterAuthActivity$dismissLoadingDialog$2> dVar) {
        super(2, dVar);
        this.$progressDialog = progressDialog;
    }

    @Override // cc.a
    public final d<vb.p> create(Object obj, d<?> dVar) {
        return new TwitterAuthActivity$dismissLoadingDialog$2(this.$progressDialog, dVar);
    }

    @Override // ic.p
    public final Object invoke(q0 q0Var, d<? super vb.p> dVar) {
        return ((TwitterAuthActivity$dismissLoadingDialog$2) create(q0Var, dVar)).invokeSuspend(vb.p.f15031a);
    }

    @Override // cc.a
    public final Object invokeSuspend(Object obj) {
        c.d();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        vb.k.b(obj);
        this.$progressDialog.dismiss();
        return vb.p.f15031a;
    }
}
