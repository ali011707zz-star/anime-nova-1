package j4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.anslayer.R;
import com.anslayer.widget.SlayerAvatar;
import com.google.android.material.button.MaterialButton;

/* compiled from: AdapterBlockedUsersBinding.java */
/* loaded from: classes.dex */
public final class f implements a2.a {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f8330a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialButton f8331b;

    /* renamed from: c, reason: collision with root package name */
    public final SlayerAvatar f8332c;

    /* renamed from: d, reason: collision with root package name */
    public final TextView f8333d;

    public f(ConstraintLayout constraintLayout, MaterialButton materialButton, SlayerAvatar slayerAvatar, TextView textView) {
        this.f8330a = constraintLayout;
        this.f8331b = materialButton;
        this.f8332c = slayerAvatar;
        this.f8333d = textView;
    }

    public static f a(View view) {
        int i10 = R.id.block;
        MaterialButton materialButton = (MaterialButton) a2.b.a(view, R.id.block);
        if (materialButton != null) {
            i10 = R.id.thumbnail;
            SlayerAvatar slayerAvatar = (SlayerAvatar) a2.b.a(view, R.id.thumbnail);
            if (slayerAvatar != null) {
                i10 = R.id.username;
                TextView textView = (TextView) a2.b.a(view, R.id.username);
                if (textView != null) {
                    return new f((ConstraintLayout) view, materialButton, slayerAvatar, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View inflate = layoutInflater.inflate(R.layout.adapter_blocked_users, viewGroup, false);
        if (z10) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    public ConstraintLayout b() {
        return this.f8330a;
    }
}
