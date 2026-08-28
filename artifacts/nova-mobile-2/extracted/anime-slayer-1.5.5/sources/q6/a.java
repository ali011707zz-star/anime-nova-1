package q6;

import android.app.Dialog;
import android.os.Bundle;
import androidx.appcompat.widget.AppCompatEditText;
import com.anslayer.R;
import com.anslayer.ui.profile.self.settings.UserSettingsActivity;
import vb.p;

/* compiled from: UserSettingsActivity.kt */
/* loaded from: classes.dex */
public final class a extends androidx.fragment.app.d {

    /* renamed from: f, reason: collision with root package name */
    public final InterfaceC0306a f12465f;

    /* compiled from: UserSettingsActivity.kt */
    /* renamed from: q6.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0306a {
        void a(String str, String str2, String str3);
    }

    /* compiled from: UserSettingsActivity.kt */
    /* loaded from: classes.dex */
    public static final class b extends jc.m implements ic.l<s2.c, p> {
        public b() {
            super(1);
        }

        public final void a(s2.c cVar) {
            jc.l.f(cVar, "it");
            String obj = ((AppCompatEditText) cVar.findViewById(R.id.current_password)).getEditableText().toString();
            String obj2 = ((AppCompatEditText) cVar.findViewById(R.id.new_password)).getEditableText().toString();
            String obj3 = ((AppCompatEditText) cVar.findViewById(R.id.new_password_confirm)).getEditableText().toString();
            if (!jc.l.a(obj, "") && !jc.l.a(obj2, "") && !jc.l.a(obj3, "")) {
                if (jc.l.a(obj2, obj3)) {
                    if (!jc.l.a(obj, obj2)) {
                        a.this.E().a(obj, obj2, obj3);
                    }
                } else {
                    androidx.fragment.app.e activity = a.this.getActivity();
                    if (activity != null) {
                        k7.b.q(activity, R.string.prompt_check_password_confirm, 0, 2, null);
                    }
                }
            } else {
                androidx.fragment.app.e activity2 = a.this.getActivity();
                if (activity2 != null) {
                    k7.b.q(activity2, R.string.prompt_check_empty, 0, 2, null);
                }
            }
            cVar.dismiss();
        }

        @Override // ic.l
        public /* bridge */ /* synthetic */ p invoke(s2.c cVar) {
            a(cVar);
            return p.f15031a;
        }
    }

    public a(UserSettingsActivity userSettingsActivity) {
        jc.l.f(userSettingsActivity, "activity");
        this.f12465f = userSettingsActivity;
    }

    public final InterfaceC0306a E() {
        return this.f12465f;
    }

    @Override // androidx.fragment.app.d
    public Dialog onCreateDialog(Bundle bundle) {
        androidx.fragment.app.e requireActivity = requireActivity();
        jc.l.e(requireActivity, "requireActivity()");
        return s2.c.v(w2.a.b(s2.c.y(new s2.c(requireActivity, null, 2, null), Integer.valueOf(R.string.title_dialog_password), null, 2, null), Integer.valueOf(R.layout.dialog_password_change), null, false, false, false, false, 62, null), Integer.valueOf(R.string.Ok), null, new b(), 2, null);
    }
}
