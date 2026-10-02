package l7;

import com.anslayer.widget.ContentViewFlipper;

/* compiled from: ContentViewFlipperExtensions.kt */
/* loaded from: classes.dex */
public final class a {
    public static final void a(ContentViewFlipper contentViewFlipper) {
        jc.l.f(contentViewFlipper, "<this>");
        if (contentViewFlipper.getDisplayedChild() != 0) {
            contentViewFlipper.showPrevious();
        }
    }

    public static final void b(ContentViewFlipper contentViewFlipper) {
        jc.l.f(contentViewFlipper, "<this>");
        if (contentViewFlipper.getDisplayedChild() != 0) {
            contentViewFlipper.showPrevious();
        } else {
            contentViewFlipper.showNext();
        }
    }
}
