package u0;

import android.content.ClipData;
import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import q0.v;

/* compiled from: TextViewOnReceiveContentListener.java */
/* loaded from: classes.dex */
public final class k implements v {

    /* compiled from: TextViewOnReceiveContentListener.java */
    /* loaded from: classes.dex */
    public static final class a {
        public static CharSequence a(Context context, ClipData.Item item, int i10) {
            if ((i10 & 1) != 0) {
                CharSequence coerceToText = item.coerceToText(context);
                return coerceToText instanceof Spanned ? coerceToText.toString() : coerceToText;
            }
            return item.coerceToStyledText(context);
        }
    }

    /* compiled from: TextViewOnReceiveContentListener.java */
    /* loaded from: classes.dex */
    public static final class b {
        public static CharSequence a(Context context, ClipData.Item item, int i10) {
            CharSequence coerceToText = item.coerceToText(context);
            return ((i10 & 1) == 0 || !(coerceToText instanceof Spanned)) ? coerceToText : coerceToText.toString();
        }
    }

    public static CharSequence b(Context context, ClipData.Item item, int i10) {
        if (Build.VERSION.SDK_INT >= 16) {
            return a.a(context, item, i10);
        }
        return b.a(context, item, i10);
    }

    public static void c(Editable editable, CharSequence charSequence) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int max = Math.max(0, Math.min(selectionStart, selectionEnd));
        int max2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        Selection.setSelection(editable, max2);
        editable.replace(max, max2, charSequence);
    }

    @Override // q0.v
    public q0.c a(View view, q0.c cVar) {
        if (Log.isLoggable("ReceiveContent", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onReceive: ");
            sb2.append(cVar);
        }
        if (cVar.d() == 2) {
            return cVar;
        }
        ClipData b10 = cVar.b();
        int c10 = cVar.c();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z10 = false;
        for (int i10 = 0; i10 < b10.getItemCount(); i10++) {
            CharSequence b11 = b(context, b10.getItemAt(i10), c10);
            if (b11 != null) {
                if (!z10) {
                    c(editable, b11);
                    z10 = true;
                } else {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), b11);
                }
            }
        }
        return null;
    }
}
