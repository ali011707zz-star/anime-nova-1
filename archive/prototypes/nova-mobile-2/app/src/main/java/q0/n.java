package q0;

import android.view.MotionEvent;

/* compiled from: MotionEventCompat.java */
/* loaded from: classes.dex */
public final class n {
    @Deprecated
    public static int a(MotionEvent motionEvent) {
        return motionEvent.getActionMasked();
    }

    public static boolean b(MotionEvent motionEvent, int i10) {
        return (motionEvent.getSource() & i10) == i10;
    }
}
