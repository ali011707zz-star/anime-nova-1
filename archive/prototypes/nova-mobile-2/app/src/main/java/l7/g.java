package l7;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TouchDelegateComposite.kt */
/* loaded from: classes.dex */
public final class g extends TouchDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final List<TouchDelegate> f10494a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(View view) {
        super(new Rect(), view);
        jc.l.f(view, "view");
        this.f10494a = new ArrayList();
    }

    public final boolean a(TouchDelegate touchDelegate) {
        jc.l.f(touchDelegate, "delegate");
        return this.f10494a.add(touchDelegate);
    }

    @Override // android.view.TouchDelegate
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        jc.l.f(motionEvent, "event");
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        while (true) {
            for (TouchDelegate touchDelegate : this.f10494a) {
                motionEvent.setLocation(x10, y10);
                z10 = touchDelegate.onTouchEvent(motionEvent) || z10;
            }
            return z10;
        }
    }
}
