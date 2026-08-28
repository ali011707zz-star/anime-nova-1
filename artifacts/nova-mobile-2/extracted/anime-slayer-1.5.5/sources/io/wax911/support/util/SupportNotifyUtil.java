package io.wax911.support.util;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.snackbar.Snackbar;
import io.wax911.support.R;
import io.wax911.support.SupportExtentionKt;
import jc.g;
import jc.l;

/* compiled from: SupportNotifyUtil.kt */
/* loaded from: classes.dex */
public final class SupportNotifyUtil {
    public static final Companion Companion = new Companion(null);

    /* compiled from: SupportNotifyUtil.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final Snackbar make(View view, String str, int i10) {
            l.f(view, "parent");
            l.f(str, "stringRes");
            Snackbar make = Snackbar.make(view, str, i10);
            l.e(make, "make(parent, stringRes, duration)");
            View view2 = make.getView();
            Context context = view.getContext();
            l.e(context, "parent.context");
            view2.setBackgroundColor(SupportExtentionKt.getColorFromAttr(context, R.attr.colorPrimaryDark));
            TextView textView = (TextView) make.getView().findViewById(R.id.snackbar_text);
            TextView textView2 = (TextView) make.getView().findViewById(R.id.snackbar_action);
            Context context2 = view.getContext();
            l.e(context2, "parent.context");
            textView.setTextColor(SupportExtentionKt.getColorFromAttr(context2, R.attr.colorOnPrimary));
            Context context3 = view.getContext();
            l.e(context3, "parent.context");
            textView2.setTextColor(SupportExtentionKt.getColorFromAttr(context3, R.attr.colorAccent));
            textView2.setTextSize(2, 12.0f);
            return make;
        }

        public final Snackbar make(View view, int i10, int i11) {
            l.f(view, "parent");
            String string = view.getContext().getString(i10);
            l.e(string, "parent.context.getString(stringRes)");
            return make(view, string, i11);
        }
    }
}
