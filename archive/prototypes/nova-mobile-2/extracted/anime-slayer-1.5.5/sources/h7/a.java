package h7;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import com.anslayer.R;
import i5.e;
import jc.l;

/* compiled from: ContentRatingUtil.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f7376a = new a();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0009. Please report as an issue. */
    public final String a(String str) {
        l.f(str, "contentType");
        switch (str.hashCode()) {
            case -1034625007:
                if (str.equals("nudity")) {
                    return "مشاهد غير لائقة";
                }
                throw new IllegalStateException(l.m("not supported server type: ", str));
            case -1012724312:
                if (str.equals("profanity")) {
                    return "ألفاظ نابية";
                }
                throw new IllegalStateException(l.m("not supported server type: ", str));
            case -847983568:
                if (str.equals("frightening_scene")) {
                    return "مشاهد مخيفة او صادمة";
                }
                throw new IllegalStateException(l.m("not supported server type: ", str));
            case 1472489115:
                if (str.equals("violence")) {
                    return "عنف ودموية";
                }
                throw new IllegalStateException(l.m("not supported server type: ", str));
            case 1581522018:
                if (str.equals("alcohol_drugs")) {
                    return "مخدرات وكحول وتدخين";
                }
                throw new IllegalStateException(l.m("not supported server type: ", str));
            default:
                throw new IllegalStateException(l.m("not supported server type: ", str));
        }
    }

    public final String b(String str) {
        l.f(str, "level");
        e.a aVar = e.f7613m;
        return l.a(str, aVar.c()) ? "لا يوجد" : l.a(str, aVar.a()) ? "خفيف" : l.a(str, aVar.b()) ? "متوسط" : l.a(str, aVar.d()) ? "شديد" : "---";
    }

    public final int c(String str) {
        l.f(str, "str");
        e.a aVar = e.f7613m;
        if (l.a(str, aVar.c())) {
            return 0;
        }
        if (l.a(str, aVar.a())) {
            return 1;
        }
        if (l.a(str, aVar.b())) {
            return 2;
        }
        if (l.a(str, aVar.d())) {
            return 3;
        }
        throw new IllegalStateException(l.m("unsupported level: ", str));
    }

    public final Drawable d(Context context, String str) {
        int i10;
        l.f(context, "context");
        l.f(str, "level");
        Drawable f10 = f0.a.f(context, R.drawable.rectangle_border);
        Drawable mutate = f10 == null ? null : f10.mutate();
        e.a aVar = e.f7613m;
        if (l.a(str, aVar.c())) {
            i10 = R.color.content_rating_none;
        } else if (l.a(str, aVar.b())) {
            i10 = R.color.content_rating_moderate;
        } else if (l.a(str, aVar.a())) {
            i10 = R.color.content_rating_mild;
        } else {
            i10 = l.a(str, aVar.d()) ? R.color.content_rating_severe : R.color.content_rating_novotes;
        }
        int d10 = f0.a.d(context, i10);
        if (mutate != null) {
            mutate.setColorFilter(new PorterDuffColorFilter(d10, PorterDuff.Mode.SRC_IN));
        }
        return mutate;
    }
}
