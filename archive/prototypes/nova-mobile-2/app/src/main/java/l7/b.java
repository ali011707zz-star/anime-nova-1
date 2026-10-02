package l7;

import com.anslayer.R;
import com.anslayer.widget.SlayerAvatar;
import com.anslayer.widget.SlayerImage;

/* compiled from: ImageViewExtensions.kt */
/* loaded from: classes.dex */
public final class b {
    public static final String a(SlayerAvatar slayerAvatar, String str) {
        jc.l.f(slayerAvatar, "<this>");
        if (str == null) {
            return null;
        }
        com.bumptech.glide.c.t(slayerAvatar.getContext()).s(str).a(h8.h.j0()).a(h8.h.n0(R.drawable.avatar_placeholder)).D0(a8.c.j(150)).a(h8.h.k0()).u0(slayerAvatar);
        return str;
    }

    public static final String b(SlayerImage slayerImage, String str) {
        jc.l.f(slayerImage, "<this>");
        if (str == null) {
            return null;
        }
        com.bumptech.glide.c.t(slayerImage.getContext()).s(str).D0(a8.c.j(350)).a(h8.h.j0()).u0(slayerImage);
        return str;
    }
}
