package io.wax911.support.common.view;

import android.app.ProgressDialog;
import android.content.Context;
import io.wax911.support.common.R;
import jc.l;

/* compiled from: DialogFactory.kt */
/* loaded from: classes.dex */
public final class DialogFactory {
    public static final DialogFactory INSTANCE = new DialogFactory();

    private DialogFactory() {
    }

    public final ProgressDialog createLoadingDialog(Context context) {
        l.f(context, "context");
        ProgressDialog progressDialog = new ProgressDialog(context, 3);
        progressDialog.setCancelable(false);
        progressDialog.setCanceledOnTouchOutside(false);
        progressDialog.setMessage(context.getString(R.string.text_loading));
        return progressDialog;
    }
}
